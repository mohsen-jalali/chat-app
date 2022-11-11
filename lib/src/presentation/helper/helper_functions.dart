import 'package:chat_app/src/presentation/constants/styles/text_styles.dart';
import 'package:flutter/material.dart';

String getFontFamily(BuildContext context) {
  if (Localizations.localeOf(context).languageCode == 'fa') {
    return Styles.persianFont;
  }
  return Styles.englishFont;
}
