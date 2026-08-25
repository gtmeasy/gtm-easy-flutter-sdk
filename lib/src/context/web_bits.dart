import 'package:web/web.dart' as web;

void fillWebBrowserContext(Map<String, Object?> ctx) {
  final nav = web.window.navigator;
  final screen = web.window.screen;
  final doc = web.document.documentElement;
  ctx['user_agent'] = nav.userAgent;
  ctx['browser_language'] = nav.language;
  ctx['screen_w'] = screen.width;
  ctx['screen_h'] = screen.height;
  ctx['viewport_w'] = doc?.clientWidth;
  ctx['viewport_h'] = doc?.clientHeight;
  ctx['dpr'] = web.window.devicePixelRatio;
  ctx['hw_concurrency'] = nav.hardwareConcurrency;
}
