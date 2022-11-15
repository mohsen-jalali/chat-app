import 'package:chat_app/src/presentation/constants/styles/text_styles.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  late TextStyle style;
  final TextOverflow? overflow;
  final int? maxLines;
  final bool? softWrap;
  final TextStyle? additionalStyle;
  final TextAlign? textAlign;
  final TextDirection? direction;
  final StrutStyle? strutStyle;
  final BuildContext context;

  TextWidget.bold(this.text, {
    Key? key,
    required this.context,
    this.overflow,
    this.maxLines,
    this.textAlign,
    this.additionalStyle,
    this.softWrap,
    this.strutStyle,
    this.direction,
  })
      : style = Styles.headline6(context).merge(additionalStyle),
        super(key: key);

  TextWidget.semiBold(this.text, {
    Key? key,
    required this.context,
    this.overflow,
    this.maxLines,
    this.textAlign,
    this.additionalStyle,
    this.softWrap,
    this.strutStyle,
    this.direction,
  })
      : style = Styles.headline6(context).merge(
      const TextStyle(fontWeight: FontWeight.w600)).merge(additionalStyle),
        super(key: key);


  TextWidget.medium(this.text, {
    Key? key,
    required this.context,
    this.overflow,
    this.maxLines,
    this.textAlign,
    this.additionalStyle,
    this.softWrap,
    this.strutStyle,
    this.direction,
  })
      : style = Styles.bodyText1(context).merge(
      const TextStyle(fontWeight: FontWeight.w600)).merge(additionalStyle),
        super(key: key);

  TextWidget.regular(this.text, {
    Key? key,
    required this.context,
    this.overflow,
    this.maxLines,
    this.textAlign,
    this.additionalStyle,
    this.softWrap,
    this.strutStyle,
    this.direction,
  })
      : style = Styles.subtitle1(context).merge(
      const TextStyle(fontWeight: FontWeight.w600)).merge(additionalStyle),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      overflow: overflow,
      strutStyle: strutStyle,
      maxLines: maxLines,
      softWrap: softWrap,
      textAlign: textAlign,
      textDirection: direction,
    );
  }
}
