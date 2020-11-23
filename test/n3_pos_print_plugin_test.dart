import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:n3_pos_print_plugin/n3_pos_print_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('n3_pos_print_plugin');

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
    expect(await N3PosPrintPlugin.platformVersion, '42');
  });
}
