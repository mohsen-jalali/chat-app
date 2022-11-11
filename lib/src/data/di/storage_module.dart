import 'package:chat_app/src/data/entity/prefrences/preferences_entity.dart';
import 'package:chat_app/src/data/storage/hive/hive.dart';
import 'package:chat_app/src/data/storage/hive/hive_impl.dart';
import 'package:chat_app/src/data/storage/keeper/keeper_actions.dart';
import 'package:chat_app/src/data/storage/keeper/keeper_impl.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kiwi/kiwi.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class StorageModule {
  static Future<void> inject() async {
    await _injectSingletons();
    _injectInstances();
  }

  static Future<void> _injectSingletons() async {
    KiwiContainer().registerSingleton<FlutterSecureStorage>(
        (container) => const FlutterSecureStorage());
    await _injectAndInitHive();
  }

  static void _injectInstances() {
      KiwiContainer().registerInstance<KeeperActions>(KeeperImpl());
  }

  static Future<void> _injectAndInitHive() async {
    var dir = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(dir.path);
    Hive
    .registerAdapter(PreferencesEntityAdapter());
    KiwiContainer().registerSingleton<MyHive>((container) => HiveImpl());
  }
}
