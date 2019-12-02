import 'dart:async';

import 'package:flutter/services.dart';

class FlutterCrisp {
  static const MethodChannel _channel =
      const MethodChannel('flutter_crisp');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
