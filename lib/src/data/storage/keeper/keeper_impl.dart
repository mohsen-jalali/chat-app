import 'package:chat_app/src/data/storage/keeper/keeper.dart';
import 'package:chat_app/src/presentation/constants/common/tags.dart';
import 'keeper_actions.dart';

class KeeperImpl extends Keeper implements KeeperActions {
  @override
  Future<String?> getToken() {
    return readValue(Tags.tokenKey);
  }

  @override
  Future<void> setToken(String token) async {
    writeValue(Tags.tokenKey, token);
  }

  @override
  Future<void> deleteAll() async {
    deleteValue(Tags.tokenKey);
  }

}
