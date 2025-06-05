import 'package:awesome_icons/widgets/awesome_icon_base.dart';
import 'package:flutter/material.dart';

class AwesomeIconsTwotone extends StatelessWidget {
  final String icon;
  final double size;
  final Color? strokeColor;
  final double? strokeWidth;
  final Gradient? gradient;
  const AwesomeIconsTwotone({
    super.key,
    required this.icon,
    this.size = 14,
    this.strokeColor,
    this.strokeWidth,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    final bool isRequired = gradient != null;
    return AwesomeIconBase(
      assetPath: icon,
      size: size,
      strokeColor: isRequired ? strokeColor ?? Colors.black : strokeColor,
      strokeWidth: strokeWidth,
      gradient: gradient,
    );
  }
}
