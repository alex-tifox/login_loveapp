import 'package:flutter/material.dart';
import 'package:login_loveapp/common/theme/color.dart';

final loveappTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: _colorScheme,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: Colors.white,
      fontSize: 14,
    ),
    headline4: TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
    button: TextStyle(
      color: Colors.white,
      fontSize: 14,
    ),
  ),
);

const _colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: LoveappColor.primary,
  onPrimary: LoveappColor.onPrimary,
  secondary: LoveappColor.secondary,
  onSecondary: LoveappColor.onSecondary,
  error: LoveappColor.error,
  onError: LoveappColor.error,
  background: LoveappColor.background,
  onBackground: LoveappColor.onBackground,
  surface: LoveappColor.onSurface,
  onSurface: LoveappColor.onSurface,
  outline: LoveappColor.outline,
);
