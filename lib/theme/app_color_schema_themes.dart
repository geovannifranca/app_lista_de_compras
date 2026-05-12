import 'package:app_lista_de_compras/theme/app_color_scheme.dart';
import 'package:app_lista_de_compras/theme/app_colors.dart';

class AppColorSchemaThemes {
  AppColorSchemaThemes._();

  static const light = AppColorSchema(
    primaryColor: AppColors.green,
    appBarColor: AppColors.green,
    backgroundColor: AppColors.white,
    cardColor: AppColors.white,
    fabColor: AppColors.green,
    textColor: AppColors.white,
  );

  static const dark = AppColorSchema(
    primaryColor: AppColors.green,
    appBarColor: AppColors.black,
    backgroundColor: AppColors.green,
    cardColor: AppColors.green,
    fabColor: AppColors.green,
    textColor: AppColors.white,
  );
}
