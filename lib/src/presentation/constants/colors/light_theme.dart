import 'package:chat_app/src/presentation/constants/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData get lightTheme {
  return ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: PrimaryColor.light,
    dividerColor: Colors.transparent,
    scaffoldBackgroundColor: BackgroundColor.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: BackgroundColor.light,
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: BackgroundColor.light,
        statusBarBrightness: Brightness.light,
      ),
      elevation: 0,
      backgroundColor: BackgroundColor.light,
    ),
    selectedRowColor: HoverSelectingButtonColor.light,
    splashColor:  HoverSelectingButtonColor.light,
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: PrimaryColor.light,
      background: BackgroundColor.light,
      secondary: SecondaryBackground.light,
      onBackground: SecondaryBackground.light,
      tertiary: TextPrimaryColor.light,
      tertiaryContainer: SubtitleColor.light,
    ),
  );
}
