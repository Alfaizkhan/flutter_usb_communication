import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_usb_communication/flutter_usb_communication.dart';
import 'package:flutter_usb_communication/flutter_usb_communication_platform_interface.dart';
import 'package:flutter_usb_communication/flutter_usb_communication_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterUsbCommunicationPlatform
    with MockPlatformInterfaceMixin
    implements FlutterUsbCommunicationPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterUsbCommunicationPlatform initialPlatform = FlutterUsbCommunicationPlatform.instance;

  test('$MethodChannelFlutterUsbCommunication is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterUsbCommunication>());
  });

  test('getPlatformVersion', () async {
    FlutterUsbCommunication flutterUsbCommunicationPlugin = FlutterUsbCommunication();
    MockFlutterUsbCommunicationPlatform fakePlatform = MockFlutterUsbCommunicationPlatform();
    FlutterUsbCommunicationPlatform.instance = fakePlatform;

    expect(await flutterUsbCommunicationPlugin.getPlatformVersion(), '42');
  });
}
