import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_usb_communication_platform_interface.dart';

/// An implementation of [FlutterUsbCommunicationPlatform] that uses method channels.
class MethodChannelFlutterUsbCommunication extends FlutterUsbCommunicationPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_usb_communication');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
