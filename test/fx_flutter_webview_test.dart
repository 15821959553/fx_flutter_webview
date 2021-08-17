import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fx_flutter_webview/fx_flutter_webview.dart';

void main() {
  const MethodChannel channel = MethodChannel('fx_flutter_webview');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FxFlutterWebview.platformVersion, '42');
  });
}
