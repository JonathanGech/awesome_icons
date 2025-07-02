import 'package:flutter_awesome_icon/widgets/awesome_icon_base.dart';
import 'package:flutter/material.dart';

class AwesomeIconsOutline extends StatelessWidget {
  final String icon;
  final double size;
  final Color? strokeColor;

  const AwesomeIconsOutline({
    super.key,
    required this.icon,
    this.size = 14,
    this.strokeColor,
  });

  @override
  Widget build(BuildContext context) {
    return AwesomeIconBase(
      assetPath: icon,
      size: size,
      strokeColor: strokeColor,
    );
  }
}
