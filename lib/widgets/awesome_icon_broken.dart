import 'package:awesome_icon/widgets/awesome_icon_base.dart';
import 'package:flutter/material.dart';

class AwesomeIconsBroken extends StatelessWidget {
  final String icon;
  final double size;
  final Color? fill;
  final Gradient? strokeGradient;
  final Color? strokeColor;
  final double? strokeWidth;

  const AwesomeIconsBroken({
    super.key,
    required this.icon,
    this.size = 14,
    this.fill,
    this.strokeGradient,
    this.strokeColor,
    this.strokeWidth,
  }):assert(
    (!(strokeGradient != null &&  strokeColor != null)),
    'strokeGradient or stroke color must be provided, but not both. If stroke color is provided, strokeGradient must be null. $strokeGradient, $strokeColor',
  );

  @override
  Widget build(BuildContext context) {
    return AwesomeIconBase(
      assetPath: icon,
      size: size,
      fill: fill,
      strokeColor: strokeColor,
      gradient: strokeGradient,
      strokeWidth: strokeWidth,
    );
  }
}
