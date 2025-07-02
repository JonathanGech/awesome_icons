import 'package:awesome_icon/widgets/icon_enums.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class AwesomeHelper {
  static Future<String> loadAndCustomizeSvg({
    required String assetPath,
    Gradient? gradient,
    Color? fill,
    double? strokeWidth,
    Color? strokeColor,
    List<Color>? colors,
    IconStrokeCap? strokeCap,
    IconStrokeJoin? strokeJoin,
  }) async {
    String iconString = await rootBundle.loadString(assetPath);

    // Basic fill
    if (fill != null) {
      iconString = iconString.replaceAllMapped(
        RegExp(r'fill="[^"]*"'),
        (_) => 'fill="${_colorToHex(fill)}"',
      );
    }
    // Basic fill
    if (colors != null) {
      int index = 0;
      int matchCount = 0;
      iconString = iconString.replaceAllMapped(RegExp(r'fill="[^"]*"'), (
        match,
      ) {
        matchCount++;
        if (matchCount == 2 || matchCount == 3) {
          if (index < colors.length) {
            return 'fill="${_colorToHex(colors[index++])}"';
          }
        }
        return match.group(0)!;
      });
      iconString = iconString.replaceAllMapped(
        RegExp(r'opacity="[^"]*"'),
        (_) => 'opacity="${colors[0].a}"',
      );
    }

    // Basic stroke
    if (strokeColor != null) {
      iconString = iconString.replaceAllMapped(
        RegExp(r'stroke="[^"]*"'),
        (_) => 'stroke="${_colorToHex(strokeColor)}"',
      );
    }

    if (strokeWidth != null) {
      iconString = iconString.replaceAllMapped(
        RegExp(r'stroke-width="[^"]*"'),
        (_) => 'stroke-width="$strokeWidth"',
      );
    }
    // Stroke cap
    if (strokeCap != null) {
      iconString = iconString.replaceAllMapped(
        RegExp(r'stroke-linecap="[^"]*"'),
        (_) => 'stroke-linecap="${strokeCap.name}"',
      );
    }
    // Stroke join
    if (strokeJoin != null) {
      iconString = iconString.replaceAllMapped(
        RegExp(r'stroke-linejoin="[^"]*"'),
        (_) => 'stroke-linejoin="${strokeJoin.name}"',
      );
    }

    // Gradient: Add <defs> block and replace fill/stroke with url(#grad)
    if (gradient != null) {
      final gradientId = "awesomeGradient";
      final defs = _buildSvgGradientDef(gradient, gradientId);

      // Insert <defs> before <svg> closing tag
      iconString = iconString.replaceFirst('</svg>', '$defs</svg>');

      if (strokeColor != null) {
        iconString = iconString.replaceAllMapped(
          RegExp(r'stroke="[^"]*"'),
          (_) => 'stroke="url(#$gradientId)"',
        );
      } else {
        iconString = iconString.replaceAllMapped(
          RegExp(r'fill="[^"]*"'),
          (_) => 'fill="url(#$gradientId)"',
        );
      }
    }
    return iconString;
  }

  static String _colorToHex(Color color) {
    final r = (color.r * 255).round().toRadixString(16).padLeft(2, '0');
    final g = (color.g * 255).round().toRadixString(16).padLeft(2, '0');
    final b = (color.b * 255).round().toRadixString(16).padLeft(2, '0');
    // final a = (color.a * 255).round().toRadixString(16).padLeft(2, '0');
    return '#$r$g$b';
  }

  static String _buildSvgGradientDef(Gradient gradient, String id) {
    if (gradient is LinearGradient) {
      final stops = gradient.colors.asMap().entries.map((entry) {
        final offset = gradient.stops?[entry.key] ??
            (entry.key / (gradient.colors.length - 1));
        return '<stop offset="${(offset * 100).toStringAsFixed(0)}%" stop-color="${_colorToHex(entry.value)}" />';
      }).join();

      return '''
<defs>
  <linearGradient id="$id" x1="0%" y1="0%" x2="100%" y2="0%">
    $stops
  </linearGradient>
</defs>
''';
    }
    // Add RadialGradient etc. if needed
    return '';
  }

  static Future<String> loadString({required String assetPath}) async =>
      await rootBundle.loadString(assetPath);
}
