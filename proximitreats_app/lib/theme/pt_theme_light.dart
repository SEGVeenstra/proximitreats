import 'package:flutter/material.dart';
import 'package:proximitreats/theme/pt_color_scheme_light.dart';
import 'package:proximitreats/theme/pt_text_theme.dart';

final ptThemeLight = ThemeData(
  colorScheme: ptColorSchemeLight,
  useMaterial3: true,
  scaffoldBackgroundColor: ptColorSchemeLight.surfaceContainerLowest,
  textTheme: ptTextTheme,
  shadowColor: ptColorSchemeLight.shadow,
  appBarTheme: AppBarThemeData(
    surfaceTintColor: Colors.transparent,
    backgroundColor: WidgetStateColor.fromMap({
      WidgetState.scrolledUnder: ptColorSchemeLight.surfaceContainer,
      WidgetState.any: ptColorSchemeLight.surfaceContainerLowest,
    }),
  ),
  cardTheme: CardThemeData(
    elevation: 0,
    clipBehavior: Clip.antiAlias,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
  ),
  splashFactory: InkSparkle.splashFactory,
  splashColor: ptColorSchemeLight.primary.withValues(alpha: .2),
);
