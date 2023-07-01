import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_usb_communication_method_channel.dart';

abstract class FlutterUsbCommunicationPlatform extends PlatformInterface {
  /// Constructs a FlutterUsbCommunicationPlatform.
  FlutterUsbCommunicationPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterUsbCommunicationPlatform _instance = MethodChannelFlutterUsbCommunication();

  /// The default instance of [FlutterUsbCommunicationPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterUsbCommunication].
  static FlutterUsbCommunicationPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterUsbCommunicationPlatform] when
  /// they register themselves.
  static set instance(FlutterUsbCommunicationPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
