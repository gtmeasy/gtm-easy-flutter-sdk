import 'package:flutter_test/flutter_test.dart';
import 'package:gtmeasy_growth/gtmeasy_growth.dart';

import 'helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() async {
    try {
      await GrowthAnalytics.instance.close();
    } catch (_) {}
  });

  test('identify is sent to /users before events', () async {
    await mockPrefs();
    final storage = MemoryGrowthStorage();
    final transport = FakeTransport();
    final analytics = await GrowthAnalytics.init(
      testConfig(),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
    );

    await analytics.identify(
      userId: 'u1',
      username: 'ada',
      email: 'ada@example.com',
      traits: {'plan': 'pro'},
    );
    await analytics.track(GrowthEvents.featureUsed);
    await analytics.flush();

    expect(transport.requests.length, greaterThanOrEqualTo(2));
    expect(transport.requests.first.path, '/users');
    expect(transport.requests[1].path, '/events/batch');
    final userBody = transport.requests.first.body as Map<Object?, Object?>;
    expect(userBody['userId'], 'u1');
    expect(userBody['username'], 'ada');
    expect(userBody['email'], 'ada@example.com');
    expect((userBody['traits'] as Map<Object?, Object?>)['plan'], 'pro');
    expect(
      (userBody['traits'] as Map<Object?, Object?>)['_ctx'],
      isA<Map<Object?, Object?>>(),
    );
  });

  test('submitSurvey shape matches the spec', () async {
    await mockPrefs();
    final storage = MemoryGrowthStorage();
    final transport = FakeTransport();
    final analytics = await GrowthAnalytics.init(
      testConfig(),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
    );

    await analytics.submitSurvey(
      'onboarding_v1',
      [
        SurveyAnswer.singleChoice('source', 'reddit', questionText: 'Source?'),
        SurveyAnswer.nps('nps', 9),
        SurveyAnswer.boolean('newsletter', true),
      ],
      surveyName: 'Onboarding',
      surveyVersion: '1',
    );
    await analytics.flush();

    expect(transport.requests.single.path, '/surveys');
    final body = transport.requests.single.body as Map<Object?, Object?>;
    expect(body['surveyId'], 'onboarding_v1');
    expect(body['surveyName'], 'Onboarding');
    expect(body['surveyVersion'], '1');
    expect(body['status'], 'completed');
    expect(body['app'], 'demo');
    final responses = body['responses'] as List<Object?>;
    expect(responses, hasLength(3));
    expect((responses[0] as Map<Object?, Object?>)['type'], 'single_choice');
    expect((responses[0] as Map<Object?, Object?>)['choices'], ['reddit']);
    expect((responses[1] as Map<Object?, Object?>)['type'], 'nps');
    expect((responses[1] as Map<Object?, Object?>)['number'], 9);
    expect((responses[2] as Map<Object?, Object?>)['bool'], true);
  });
}
