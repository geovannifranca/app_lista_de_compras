import 'package:app_lista_de_compras/pages/home_page.dart';
import 'package:app_lista_de_compras/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de Compras',
      themeMode: ThemeMode.light,
      theme: lightTheme(),
      home: const HomePage(),
    );
  }
}
