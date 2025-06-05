import 'package:awesome_icons/widgets/awesome_helper.dart';
import 'package:awesome_icons/widgets/icon_enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AwesomeIconBase extends StatelessWidget {
  final String assetPath;
  final double size;
  final Color? fill;
  final Color? strokeColor;
  final double? strokeWidth;
  final Gradient? gradient;
  final List<Color>? colors;
  final IconStrokeCap? strokeCap;
  final IconStrokeJoin? strokeJoin;
  final void Function(String? svgAsset)? editedSvg;

  const AwesomeIconBase({
    super.key,
    required this.assetPath,
    required this.size,
    this.editedSvg,
    this.fill,
    this.strokeColor,
    this.strokeWidth,
    this.strokeCap,
    this.strokeJoin,
    this.gradient,
    this.colors,
  });

  bool get requiresCustomSvg =>
      fill != null ||
      strokeColor != null ||
      (strokeCap != null && strokeCap != IconStrokeCap.round) ||
      (strokeJoin != null && strokeJoin != IconStrokeJoin.round) ||
      strokeWidth != null ||
      gradient != null ||
      colors != null;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: requiresCustomSvg
          ? AwesomeHelper.loadAndCustomizeSvg(
              assetPath: assetPath,
              fill: fill,
              strokeColor: strokeColor,
              strokeWidth: strokeWidth,
              strokeCap: strokeCap,
              strokeJoin: strokeJoin,
              gradient: gradient,
              colors: colors,
            )
          : AwesomeHelper.loadString(assetPath: assetPath),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          if (editedSvg != null) {
            editedSvg!(snapshot.data);
          }

          return requiresCustomSvg
              ? SvgPicture.string(snapshot.data!, width: size, height: size)
              : SvgPicture.asset(assetPath, width: size, height: size);
        }

        return SizedBox(width: size, height: size); // Placeholder or loader
      },
    );
  }
}
