import 'package:flutter/material.dart';

class AppColorSchema extends ThemeExtension<AppColorSchema> {
  final Color? primaryColor;
  final Color? appBarColor;
  final Color? fabColor;
  final Color? cardColor;
  final Color? backgroundColor;
  final Color? textColor;

  const AppColorSchema({
    this.primaryColor,
    this.appBarColor,
    this.fabColor,
    this.cardColor,
    this.backgroundColor,
    this.textColor,
  });

  @override
  ThemeExtension<AppColorSchema> copyWith({
    Color? primaryColor,
    Color? appBarColor,
    Color? fabColor,
    Color? cardColor,
    Color? backgroundColor,
    Color? textColor,
  }) {
    return AppColorSchema(
      primaryColor: primaryColor ?? this.primaryColor,
      appBarColor: appBarColor ?? this.appBarColor,
      fabColor: fabColor ?? this.fabColor,
      cardColor: cardColor ?? this.cardColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  ThemeExtension<AppColorSchema> lerp(
    ThemeExtension<AppColorSchema>? other,
    double t,
  ) {
    if (other is! AppColorSchema) {
      return this;
    }

    return AppColorSchema(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      appBarColor: Color.lerp(appBarColor, other.appBarColor, t),
      fabColor: Color.lerp(fabColor, other.fabColor, t),
      cardColor: Color.lerp(cardColor, other.cardColor, t),
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      textColor: Color.lerp(textColor, other.textColor, t),
    );
  }
}
