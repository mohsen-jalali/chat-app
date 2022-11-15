import 'package:chat_app/main.dart';
import 'package:chat_app/src/presentation/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static final BuildContext _context = navigatorKey.currentContext!;

  static const String persianFont = "YekanBakh";

  static const String englishFont = "Gilroy";

  static String fontFamily = getFontFamily(_context);

  static TextStyle headline1(BuildContext context) => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 48,
        color: Theme.of(context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle headline2(BuildContext context) => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 40,
        color: Theme.of(context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle headline3(BuildContext context) => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 36,
        color: Theme.of(context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle headline4(BuildContext context) => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 32,
        color: Theme.of(context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle headline5(BuildContext context) => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 28,
        color: Theme.of(context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle headline6(BuildContext context) => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: Theme.of(context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle button(BuildContext context) => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 18.sp,
        color: Theme.of(context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle subtitle1(BuildContext context) => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 20.sp,
        color: Theme.of(context).colorScheme.tertiaryContainer,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle subtitle2(BuildContext context) => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 18.sp,
        color: Theme.of(context).colorScheme.tertiaryContainer,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle bodyText1(BuildContext context) => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        color: Theme.of(context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle bodyText2(BuildContext context) => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Theme.of(context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );

  static TextStyle caption(BuildContext context) => TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: Theme.of(context).colorScheme.tertiary,
        fontFamilyFallback: const [
          englishFont,
          persianFont,
        ],
      );
}
