import 'package:chat_app/src/presentation/common_widgets/icon_button.dart';
import 'package:chat_app/src/presentation/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget implements PreferredSize {
  final String? title;
  final TextStyle? titleStyle;
  final bool hasBackButton;
  final bool centerTitle;
  final Widget? leading;
  final List<Widget>? actions;
  final VoidCallback? onPressBack;

  const CustomAppbar({
    Key? key,
    this.title,
    this.titleStyle,
    this.leading,
    this.actions,
    this.hasBackButton = false,
    this.centerTitle = true,
    this.onPressBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextWidget.bold(
        title ?? "",
        context: context,
        additionalStyle: titleStyle,
      ),
      centerTitle: centerTitle,
      actions: actions,
      backgroundColor: Theme.of(context).colorScheme.background,
      leading: Visibility(
        visible: hasBackButton,
        replacement: leading ?? const SizedBox.shrink(),
        child: IconWidget(
          iconData: Icons.arrow_back_ios_new,
          onPressed: onPressBack,
        ),
      ),
    );
  }

  @override
  Widget get child => const SizedBox();

  @override
  Size get preferredSize => Size.fromHeight(64.h);
}
