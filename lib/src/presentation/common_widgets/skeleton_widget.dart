import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class SkeletonWidget extends StatelessWidget {
  final double height;
  final double width;
  final BoxShape shape;

  const SkeletonWidget.rectangular({
    Key? key,
    required this.width,
    required this.height,
  })  : shape = BoxShape.rectangle,
        super(key: key);

  const SkeletonWidget.circular({
    Key? key,
    required this.width,
    required this.height,
  })  : shape = BoxShape.circle,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkeletonAnimation(
      shimmerColor: Colors.grey[200]!,
      shimmerDuration: 1200,
      borderRadius: shape == BoxShape.circle
          ? const BorderRadius.all(Radius.circular(100))
          : const BorderRadius.all(Radius.circular(10)),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: shape,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.10),
              blurRadius: 10,
            ),
          ],
          borderRadius: shape == BoxShape.circle
              ? null
              : const BorderRadius.all(Radius.circular(10)),
          color: const Color(0xFFE9E9E9),
        ),
      ),
    );
  }
}
