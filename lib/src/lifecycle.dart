import 'dart:async';
import 'dart:ui';

import 'package:flutter/widgets.dart';

import 'analytics.dart';

/// Optional Flutter lifecycle hook. Pure-Dart consumers never import it.
class GrowthLifecycleObserver with WidgetsBindingObserver {
  GrowthLifecycleObserver(
    this.analytics, {
    this.trackFirstOpen = true,
    this.resumeDebounce = const Duration(seconds: 2),
  });

  final GrowthAnalytics analytics;
  final bool trackFirstOpen;
  final Duration resumeDebounce;

  bool _attached = false;
  bool _sawPause = false;
  Timer? _resumeTimer;
  AppLifecycleListener? _exitListener;

  void attach() {
    if (_attached) return;
    WidgetsBinding.instance.addObserver(this);
    _exitListener = AppLifecycleListener(
      onExitRequested: () async {
        await analytics.flush();
        return AppExitResponse.exit;
      },
    );
    _attached = true;
    if (trackFirstOpen) {
      unawaited(analytics.trackFirstOpen());
    }
  }

  void detach() {
    if (!_attached) return;
    _resumeTimer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    _exitListener?.dispose();
    _exitListener = null;
    _attached = false;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        _sawPause = true;
        _resumeTimer?.cancel();
        unawaited(analytics.flush());
      case AppLifecycleState.resumed:
        if (_sawPause && trackFirstOpen) {
          _resumeTimer?.cancel();
          _resumeTimer = Timer(resumeDebounce, () {
            unawaited(analytics.trackFirstOpen());
          });
        }
        _sawPause = false;
      case AppLifecycleState.inactive:
        break;
    }
  }
}
