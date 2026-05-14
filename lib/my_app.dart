import 'package:app_lista_de_compras/pages/home_page.dart';
import 'package:app_lista_de_compras/providers/theme_provider.dart';
import 'package:app_lista_de_compras/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Lista de Compras',
            themeMode: themeProvider.themeMode,
            theme: lightTheme(),
            darkTheme: darkTheme(),
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
