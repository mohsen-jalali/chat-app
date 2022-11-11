import 'package:chat_app/src/data/entity/prefrences/preferences_entity.dart';
import 'package:chat_app/src/data/storage/hive/hive.dart';
import 'package:chat_app/src/presentation/constants/common/tags.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveImpl extends MyHive {

  @override
  Future<void> clearAll() async {
    await Hive.deleteFromDisk();
  }

  @override
  Future<PreferencesEntity?> getPreferences() async {
    final box = await Hive.openBox(Tags.preferencesBoxKey);
    return box.get(Tags.preferencesBoxKey);
  }

  @override
  Future<void> setPreferences(PreferencesEntity preferencesEntity) async {
    final box = await Hive.openBox(Tags.preferencesBoxKey);
    return box.put(Tags.preferencesBoxKey, preferencesEntity);
  }

}
