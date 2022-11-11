import 'package:chat_app/src/data/reppsitory/local_repository/local_storage_repository.dart';
import 'package:chat_app/src/domain/bloc/theme_cubit/theme_state.dart';
import 'package:chat_app/src/domain/model/settings/prefrences.dart';
import 'package:chat_app/src/presentation/constants/colors/dark_theme.dart';
import 'package:chat_app/src/presentation/constants/colors/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Themes{
  dark,light
}

class ThemeCubit extends Cubit<HomeThemeState> {
  LocalStorageRepository localStorageRepository;
  ThemeCubit(this.localStorageRepository) : super(InitHomeThemeState()) {
    _checkFromKeeper();
  }

  bool isDark = false;

  changeTheme(bool isDark) {
    this.isDark = isDark;
    localStorageRepository.updatePreferences(PreferencesModel()..theme = isDark ? 'dark' : 'light');
    emit(ChangedHomeThemeState());
  }

  void _checkFromKeeper() async {
    String? theme = (await localStorageRepository.getPreferences()).theme;
    print("checkFromKeeper ==================>$theme");

    if (theme != null) {
      if (theme == "dark") {
        isDark = true;
      }
      emit(ChangedHomeThemeState());
    }
  }

  Future<ThemeData> checkTheme() async {
    String? theme = (await localStorageRepository.getPreferences()).theme;
    print("checkFromKeeper ==================>$theme");

    if (theme != null) {
      if (theme == "dark") {
        isDark = true;
        return darkTheme;
      }
    }
    return lightTheme;

  }
}
