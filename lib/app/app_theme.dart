// ignore_for_file: deprecated_member_use

import 'package:ebroker/utils/Extensions/extensions.dart';
import 'package:flutter/material.dart';

enum AppTheme { dark, light }

final appThemeData = {
  AppTheme.light: ThemeData(
    useMaterial3: false,
    // scaffoldBackgroundColor: pageBackgroundColor,
    brightness: Brightness.light,
    //textTheme
    fontFamily: 'Manrope',

    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: tertiaryColor_,
      cursorColor: tertiaryColor_,
      selectionHandleColor: tertiaryColor_,
    ),
    cardColor: tertiaryColor_,
    // textSelectionTheme:
    //     const TextSelectionThemeData(selectionHandleColor: teritoryColor_),
    switchTheme: SwitchThemeData(
      thumbColor: const WidgetStatePropertyAll(tertiaryColor_),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return tertiaryColor_;
        }
        return primaryColorDark;
      }),
    ),
  ),
  AppTheme.dark: ThemeData(
    brightness: Brightness.dark,
    useMaterial3: false,
    fontFamily: 'Manrope',
    cardColor: tertiaryColor_,
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: tertiaryColor_,
      cursorColor: tertiaryColor_,
      selectionHandleColor: tertiaryColor_,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: const WidgetStatePropertyAll(tertiaryColor_),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return tertiaryColor_;
        }
        return primaryColor_;
      }),
    ),
  ),
};

extension on Color {
  withValues({required double alpha}) {}
}
