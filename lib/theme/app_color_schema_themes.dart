import 'package:app_lista_de_compras/theme/app_color_scheme.dart';
import 'package:app_lista_de_compras/theme/app_colors.dart';

class AppColorSchemaThemes {
  AppColorSchemaThemes._();

  static const light = AppColorSchema(
    primaryColor: AppColors.green100,
    appBarColor: AppColors.green100,
    backgroundColor: AppColors.white,
    cardColor: AppColors.white,
    fabColor: AppColors.green100,
    textColor: AppColors.white,
  );

  static const dark = AppColorSchema(
    primaryColor: AppColors.green100,
    appBarColor: AppColors.black,
    backgroundColor: AppColors.black,
    cardColor: AppColors.green50,
    fabColor: AppColors.green100,
    textColor: AppColors.white,
  );
}
