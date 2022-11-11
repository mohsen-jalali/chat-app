import 'package:chat_app/main.dart';
import 'package:chat_app/src/presentation/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static final BuildContext _context = navigatorKey.currentContext!;

  static const String persianFont = "YekanBakh";

  static const String englishFont = "Gilroy";

  static String fontFamily = getFontFamily(_context);

  static TextStyle get headline1 => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 48,
        color: Theme.of(_context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle get headline2 => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 40,
        color: Theme.of(_context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle get headline3 => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 36,
        color: Theme.of(_context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle get headline4 => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 32,
        color: Theme.of(_context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle get headline5 => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 28,
        color: Theme.of(_context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle get headline6 => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: Theme.of(_context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle get button => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 18.sp,
    color: Theme.of(_context).colorScheme.tertiary,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle get subtitle1 => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
    color: Theme.of(_context).colorScheme.tertiaryContainer,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle get subtitle2 => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
    color: Theme.of(_context).colorScheme.tertiaryContainer,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle get bodyText1 => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: Theme.of(_context).colorScheme.tertiary,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle get bodyText2 => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Theme.of(_context).colorScheme.tertiary,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );

  static TextStyle get caption => TextStyle(
    textBaseline: TextBaseline.alphabetic,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Theme.of(_context).colorScheme.tertiary,
    fontFamilyFallback: const [
      englishFont,
      persianFont,
    ],
  );
}
