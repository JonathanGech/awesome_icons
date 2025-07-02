import 'package:flutter_awesome_icon/widgets/awesome_icon_base.dart';
import 'package:flutter_awesome_icon/widgets/icon_enums.dart';

import 'package:flutter/material.dart';

class AwesomeIconsLinear extends StatelessWidget {
  final String icon;
  final double size;
  final Color? fill;
  final Color? strokeColor;
  final double? strokeWidth;
  final IconStrokeCap? strokeCap;
  final IconStrokeJoin? strokeJoin;
  final Gradient? gradient;

  const AwesomeIconsLinear({
    super.key,
    required this.icon,
    this.size = 14,
    this.gradient,
    this.fill,
    this.strokeColor,
    this.strokeWidth,
    this.strokeCap,
    this.strokeJoin,
  });

  @override
  Widget build(BuildContext context) {
    final bool isRequired = gradient != null;
    return AwesomeIconBase(
      assetPath: icon,
      size: size,
      strokeColor: isRequired ? strokeColor ?? Colors.black : strokeColor,
      strokeWidth: strokeWidth,
      fill: fill,
      strokeCap: strokeCap,
      strokeJoin: strokeJoin,
      gradient: gradient,
    );
  }
}
