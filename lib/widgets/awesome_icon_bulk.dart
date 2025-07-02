import 'package:awesome_icon/widgets/awesome_icon_base.dart';
import 'package:flutter/material.dart';

class AwesomeIconsBulk extends StatelessWidget {
  final String icon;
  final double size;
  final Color? fill;
  final List<Color>? colors;

  const AwesomeIconsBulk({
    super.key,
    required this.icon,
    this.size = 14,
    this.fill,
    this.colors,
  }) : assert(
         !(fill != null && colors != null),
         'You can only use either fill or colors, not both at the same time.',
       ),
       assert(
         !(colors != null && colors.length<2),
         'If you provide colors, it must be a non-empty list.',
       );

  @override
  Widget build(BuildContext context) {
    return AwesomeIconBase(
      assetPath: icon,
      size: size,
      fill: fill,
      colors: colors,
    );
  }
}
