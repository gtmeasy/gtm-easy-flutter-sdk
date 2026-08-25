import 'package:flutter/material.dart';
import 'package:gtmeasy_growth/gtmeasy_growth_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'GTM Easy Growth', home: ExampleHome());
  }
}

class ExampleHome extends StatefulWidget {
  const ExampleHome({super.key});

  @override
  State<ExampleHome> createState() => _ExampleHomeState();
}

class _ExampleHomeState extends State<ExampleHome> {
  GrowthAnalytics? _analytics;
  GrowthLifecycleObserver? _observer;
  String _status = 'Initializing…';
  String? _error;

  static const _apiKey = String.fromEnvironment(
    'GTM_GROWTH_KEY',
    defaultValue: 'gtm_growth_demo',
  );
  static const _app = String.fromEnvironment(
    'GTM_GROWTH_APP',
    defaultValue: 'flutter-example',
  );

  @override
  void initState() {
    super.initState();
    _start();
  }

  Future<void> _start() async {
    try {
      final analytics = await GrowthAnalytics.init(
        GrowthConfig(
          apiKey: _apiKey,
          app: _app,
          environment: GrowthEnvironment.development,
        ),
      );
      final observer = GrowthLifecycleObserver(analytics)..attach();
      if (!mounted) return;
      setState(() {
        _analytics = analytics;
        _observer = observer;
        _status = 'anonymousId=${analytics.anonymousId}';
      });
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _error = error.toString();
        _status = 'Failed to init';
      });
    }
  }

  Future<void> _identify() async {
    await _analytics?.identify(userId: 'demo-user', traits: {'plan': 'pro'});
    if (!mounted) return;
    setState(() => _status = 'identified ${_analytics?.userId}');
  }

  Future<void> _track() async {
    await _analytics?.track(
      GrowthEvents.buttonClicked,
      properties: {'button': 'example'},
    );
    if (!mounted) return;
    setState(() => _status = 'tracked ${GrowthEvents.buttonClicked}');
  }

  Future<void> _flush() async {
    final result = await _analytics?.flush();
    if (!mounted) return;
    setState(
      () => _status =
          'flush sent=${result?.sent} failed=${result?.failed} remaining=${result?.remaining}',
    );
  }

  @override
  void dispose() {
    _observer?.detach();
    _analytics?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GTM Easy Growth')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(_status),
            if (_error != null) Text(_error!),
            const SizedBox(height: 16),
            FilledButton(onPressed: _identify, child: const Text('Identify')),
            FilledButton(onPressed: _track, child: const Text('Track')),
            FilledButton(onPressed: _flush, child: const Text('Flush')),
          ],
        ),
      ),
    );
  }
}
