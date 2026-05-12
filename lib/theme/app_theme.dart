import 'package:app_lista_de_compras/theme/app_color_schema_themes.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData.dark();
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
