import 'package:chat_app/src/presentation/config/navigation_observer.dart';
import 'package:kiwi/kiwi.dart';

class PresentationInjection {

  static void inject() {
    _injectSingletons();
   }

  static void _injectSingletons() {
    KiwiContainer().registerSingleton<NavigationObserver>((container) =>
        NavigationObserver());
  }
}