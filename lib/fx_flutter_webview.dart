
import 'dart:async';

import 'package:flutter/services.dart';

class FxFlutterWebview {
  static const MethodChannel _channel =
      const MethodChannel('fx_flutter_webview');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
