import 'package:flutter/material.dart';

const String _fontName = 'Outfit';

// Helper to keep code DRY (Don't Repeat Yourself)
TextStyle _outfit(double size, double weight, double spacing) {
  return TextStyle(
    fontFamily: _fontName,
    fontSize: size,
    letterSpacing: spacing,
    fontVariations: [FontVariation('wght', weight)],
  );
}

final ptTextTheme = TextTheme(
  // DISPLAY: Large, short-form emphasis (Hero sections)
  displayLarge: _outfit(57, 700, -0.25),
  displayMedium: _outfit(45, 700, 0.0),
  displaySmall: _outfit(36, 700, 0.0),

  // HEADLINE: High-emphasis (Page titles)
  headlineLarge: _outfit(32, 600, 0.0),
  headlineMedium: _outfit(28, 600, 0.0),
  headlineSmall: _outfit(24, 600, 0.0),

  // TITLE: Medium-emphasis (Card headers, App bars)
  titleLarge: _outfit(22, 500, 0.0),
  titleMedium: _outfit(16, 500, 0.15),
  titleSmall: _outfit(14, 500, 0.1),

  // BODY: Low-emphasis (Long-form text)
  // Note: 450 weight is often more readable than 400 for variable fonts
  bodyLarge: _outfit(16, 450, 0.5),
  bodyMedium: _outfit(14, 450, 0.25),
  bodySmall: _outfit(12, 450, 0.4),

  // LABEL: Smallest components (Buttons, Captions)
  labelLarge: _outfit(14, 600, 0.1),
  labelMedium: _outfit(12, 600, 0.5),
  labelSmall: _outfit(11, 600, 0.5),
);
