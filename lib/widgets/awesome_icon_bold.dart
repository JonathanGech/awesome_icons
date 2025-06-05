import 'package:awesome_icons/widgets/awesome_icon_base.dart';
import 'package:flutter/material.dart';

class AwesomeIconsBold extends StatelessWidget {
  final String icon;
  final double size;
  final Color? fill;
  final Gradient? gradient;

  const AwesomeIconsBold({
    super.key,
    required this.icon,
    this.size = 14,
    this.fill,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
   
    return AwesomeIconBase(
      assetPath: icon,
      size: size,
      fill: fill,
      gradient: gradient,
    );
  }
}
