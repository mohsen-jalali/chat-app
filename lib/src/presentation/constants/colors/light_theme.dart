import 'package:chat_app/src/presentation/constants/colors/colors.dart';
import 'package:chat_app/src/presentation/constants/fonts/fonts.dart';
import 'package:chat_app/src/presentation/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final lightTheme = ThemeData.light().copyWith(
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
          statusBarColor: BackgroundColor.light, // Colo// r for// Android
          statusBarBrightness:
          Brightness.light // Dark == white status bar -- for IOS.
      ),
      elevation: 0,
      backgroundColor: BackgroundColor.light,
    ),
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: PrimaryColor.light,
      background: BackgroundColor.light,
      secondary: SecondaryBackground.light,
      onBackground: SecondaryBackground.light,
    ),
    primaryTextTheme: TextTheme(
      headline1: TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: getFontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 48,
        color: TextPrimaryColor.light,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      ),
      headline2: TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: getFontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 40,
        color: TextPrimaryColor.light,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      ),
      headline3: TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: getFontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 36,
        color: TextPrimaryColor.light,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      ),
      headline4: TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: getFontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 32,
        color: TextPrimaryColor.light,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      ),
      headline5: TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: getFontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 28,
        color: TextPrimaryColor.light,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      ),
      headline6: TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: getFontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: TextPrimaryColor.light,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      ),
      button: TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: getFontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 18.sp,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
        color: TextPrimaryColor.light,
      ),
      subtitle1: TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: getFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 20.sp,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
        color: SubtitleColor.light,
      ),
      subtitle2: TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: getFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 18.sp,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
        color: SubtitleColor.light,
      ),
      bodyText1: TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: getFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
        color: TextPrimaryColor.light,
      ),
      bodyText2: TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: getFontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
        color: TextPrimaryColor.light,
      ),
      caption: TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: getFontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
        color: TextPrimaryColor.light,
      ),
      overline: TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: getFontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 10,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
        color: TextPrimaryColor.light,
      ),
    )
);