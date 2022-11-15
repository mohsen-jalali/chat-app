import 'package:flutter/material.dart';

enum ToggleSwitchInit { start, end }

class ToggleSwitchWidget extends StatefulWidget {
  final Widget endWidget;
  final Widget startWidget;
  final Color backColor;
  final Color toggleBackColor;
  final Function(bool isLeft)? onChanged;
  ToggleSwitchInit toggleSwitchInit;

  ToggleSwitchWidget({
    Key? key,
    this.toggleSwitchInit = ToggleSwitchInit.start,
    required this.onChanged,
    required this.startWidget,
    required this.endWidget,
    required this.toggleBackColor,
    required this.backColor,
  }) : super(key: key);

  @override
  State<ToggleSwitchWidget> createState() => _ToggleSwitchWidgetState();
}

class _ToggleSwitchWidgetState extends State<ToggleSwitchWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> animation;
  late bool isLight;
  bool firstVal = true;

  @override
  void initState() {
    isLight = widget.toggleSwitchInit == ToggleSwitchInit.start;
    firstVal = isLight;
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    animation = Tween<Offset>(
      begin: isLight ? Offset(-0.2, 0.0) : Offset(0.2, 0.0),
      end: isLight ? Offset(0.2, 0.0) : Offset(-0.2, 0.0),
    ).animate(CurvedAnimation(parent: controller, curve: Curves.linear));
    controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: controller.isAnimating ? null:() async {
        isLight = !isLight;
        _moveAsInitWasEndWidget();
        widget.toggleSwitchInit =
        isLight ? ToggleSwitchInit.start : ToggleSwitchInit.end;
        widget.onChanged?.call(isLight);
      },
      child: Container(
        width: 55,
        height: 32,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: widget.backColor),
        child: SlideTransition(
          position: animation,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: FloatingActionButton.small(
              heroTag: null,
              onPressed: null,
              elevation: 0,
              backgroundColor: widget.toggleBackColor,
              child: isLight ? widget.startWidget : widget.endWidget,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _moveAsInitWasEndWidget() {
    if (isLight != firstVal) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }
}
