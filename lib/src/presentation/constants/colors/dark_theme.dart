import 'package:chat_app/src/presentation/constants/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData get darkTheme {
  return ThemeData.light().copyWith(
    brightness: Brightness.dark,
    primaryColor: PrimaryColor.dark,
    dividerColor: Colors.transparent,
    scaffoldBackgroundColor: BackgroundColor.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: BackgroundColor.dark,
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: BackgroundColor.dark,
        statusBarBrightness: Brightness.light,
      ),
      elevation: 0,
      backgroundColor: BackgroundColor.dark,
    ),
    selectedRowColor: HoverSelectingButtonColor.dark,
    splashColor:  HoverSelectingButtonColor.dark,
    hoverColor: HoverSelectingButtonColor.dark,
    colorScheme: ColorScheme.light(
      brightness: Brightness.dark,
      primary: PrimaryColor.dark,
      background: BackgroundColor.dark,
      secondary: SecondaryBackground.dark,
      onBackground: SecondaryBackground.dark,
      tertiary: TextPrimaryColor.dark,
      tertiaryContainer: SubtitleColor.dark,
    ),
  );
}
