import 'package:flutter_test/flutter_test.dart';
import 'package:gtmeasy_growth_example/main.dart';

void main() {
  testWidgets('example app loads', (tester) async {
    await tester.pumpWidget(const ExampleApp());
    await tester.pump();
    expect(find.text('GTM Easy Growth'), findsOneWidget);
  });
}
