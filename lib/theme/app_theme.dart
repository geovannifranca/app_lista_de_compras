import 'package:app_lista_de_compras/theme/app_color_schema_themes.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme() {
  const colors = AppColorSchemaThemes.dark;

  return ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Montserrat',
    extensions: const [AppColorSchemaThemes.dark],

    colorScheme: ColorScheme.dark(primary: colors.primaryColor!),

    appBarTheme: AppBarTheme(
      backgroundColor: colors.appBarColor,
      foregroundColor: colors.textColor,
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colors.fabColor,
      foregroundColor: colors.textColor,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colors.primaryColor,
        foregroundColor: colors.textColor,
      ),
    ),

    cardTheme: CardThemeData(color: colors.primaryColor),
  );
}

ThemeData lightTheme() {
  const colors = AppColorSchemaThemes.light;

  return ThemeData(
    brightness: Brightness.light,
    extensions: const [AppColorSchemaThemes.light],

    colorScheme: ColorScheme.light(primary: colors.primaryColor!),

    appBarTheme: AppBarTheme(
      backgroundColor: colors.appBarColor,
      foregroundColor: colors.textColor,
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colors.fabColor,
      foregroundColor: colors.textColor,
    ),
  );
}
