import 'package:chat_app/src/data/di/storage_module.dart';
import 'package:chat_app/src/presentation/di/presentation_injection.dart';

class Injector {
  static inject() async {
    await injectData();
    await _injectDomain();
    await _injectPresentation();
  }

  static Future<void> injectData() async {
    await StorageModule.inject();
  }

  static _injectDomain() {
  }

  static _injectPresentation() {
    PresentationInjection.inject();
  }
}
