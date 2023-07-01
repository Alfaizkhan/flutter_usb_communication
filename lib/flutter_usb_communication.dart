
import 'flutter_usb_communication_platform_interface.dart';

class FlutterUsbCommunication {
  Future<String?> getPlatformVersion() {
    return FlutterUsbCommunicationPlatform.instance.getPlatformVersion();
  }
}
