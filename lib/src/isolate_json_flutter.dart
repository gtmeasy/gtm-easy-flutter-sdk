import 'dart:convert';

import 'package:flutter/foundation.dart';

Future<String> encodeJsonIsolate(Object? value) {
  return compute(_encode, value);
}

String _encode(Object? value) => jsonEncode(value);
