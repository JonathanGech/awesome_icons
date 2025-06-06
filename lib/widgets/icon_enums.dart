class IconItem {
  final String assetPath;
  final IconCategory category;
  final String name;
  final IconStyle style;

  const IconItem({
    required this.assetPath,
    required this.category,
    required this.name,
    required this.style,
  });
}

enum IconStyle { all, broken, bold, linear, bulk, outline, twotone }

enum IconCategory { all, essential, food, tech }

enum IconStrokeCap { butt, round, square }
enum IconStrokeJoin { mitter, round, bevel }
