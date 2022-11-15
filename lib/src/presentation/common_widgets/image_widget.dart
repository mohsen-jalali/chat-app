import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat_app/src/presentation/common_widgets/skeleton_widget.dart';
import 'package:chat_app/src/presentation/constants/common/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageLoaderWidget extends StatelessWidget {
  final String imageUrl;
  final bool ifFromAsset;
  final BoxShape boxShape;
  final BoxFit? boxFit;
  final double? height;
  final double? width;
  final double? borderRadius;

  const ImageLoaderWidget.fromAsset({
    Key? key,
    required this.imageUrl,
    this.boxShape = BoxShape.rectangle,
    this.height,
    this.width,
    this.boxFit = BoxFit.cover,
    this.borderRadius,
  })  : ifFromAsset = true,
        super(key: key);

  const ImageLoaderWidget.fromNetwork({
    Key? key,
    required this.imageUrl,
    this.boxShape = BoxShape.rectangle,
    this.height,
    this.width,
    this.boxFit = BoxFit.cover,
    this.borderRadius,
  })  : ifFromAsset = false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: boxShape == BoxShape.circle
            ? null
            : BorderRadius.circular(borderRadius ?? 0),
        shape: boxShape,
      ),
      child: Visibility(
        replacement: Image.asset(
          imageUrl,
          fit: boxFit,
          width: width,
          height: height,
          errorBuilder: (context, error, stackTrace) => SvgPicture.asset(
            Assets.iconNotFound,
            fit: BoxFit.contain,
            height: height,
            width: width,
          ),
        ),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: boxFit,
          errorWidget: (context, url, error) => SvgPicture.asset(
            Assets.iconNotFound,
            fit: BoxFit.contain,
            height: height,
            width: width,
          ),
          height: height,
          width: width,
          placeholder: (context, url) => boxShape == BoxShape.circle
              ? SkeletonWidget.circular(
                  width: width ?? 50,
                  height: height ?? 50,
                )
              : SkeletonWidget.rectangular(
                  width: width ?? 50,
                  height: height ?? 50,
                ),
        ),
      ),
    );
  }
}
