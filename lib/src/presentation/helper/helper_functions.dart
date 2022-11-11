import 'package:chat_app/main.dart';
import 'package:chat_app/src/presentation/constants/fonts/fonts.dart';
import 'package:flutter/material.dart';

String get getFontFamily {
  if (Localizations.localeOf(navigatorKey.currentContext!).languageCode == 'fa') {
    return persianFont;
  }
  return englishFont;
}