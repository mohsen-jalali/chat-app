import 'package:chat_app/src/data/reppsitory/local_repository/local_storage_repository.dart';
import 'package:chat_app/src/data/reppsitory/local_repository/local_storage_repository_impl.dart';
import 'package:kiwi/kiwi.dart';

class RepositoryModule {
  static inject() {
    KiwiContainer().registerFactory<LocalStorageRepository>((container) =>
        LocalStorageRepositoryImpl(
            keeper: container.resolve(), hive: container.resolve()));
  }
}
