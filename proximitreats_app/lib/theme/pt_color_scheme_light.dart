import 'package:flutter/material.dart';
import 'package:proximitreats/theme/pt_colors.dart';

final ptColorSchemeLight = ColorScheme.light(
  // Primary Colors
  primary: PtColors.purple,
  onPrimary: PtColors.white,
  primaryContainer: PtColors.purpleLight,
  onPrimaryContainer: PtColors.purpleLightest,
  // Secondary Colors
  secondary: PtColors.redish,
  onSecondary: PtColors.white,
  secondaryContainer: PtColors.redishLight,
  onSecondaryContainer: PtColors.redishDarkest,
  // Tertiary Colors
  tertiary: PtColors.orange,
  onTertiary: PtColors.white,
  tertiaryContainer: PtColors.orangeLight,
  onTertiaryContainer: PtColors.orangeDarkest,
  // Error Colors
  error: PtColors.red,
  onError: PtColors.white,
  errorContainer: PtColors.redLight,
  onErrorContainer: PtColors.redDark,
  // Surface Colors
  surface: PtColors.peachLightest,
  onSurface: PtColors.purpleDarkest,
  onSurfaceVariant: PtColors.purpleDark,
  surfaceContainerLowest: PtColors.peachLightest,
  surfaceContainerLow: PtColors.peachLight,
  surfaceContainer: PtColors.peach,
  surfaceContainerHigh: PtColors.peachDark,
  surfaceContainerHighest: PtColors.peachDarkest,
);
