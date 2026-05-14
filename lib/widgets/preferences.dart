import 'package:app_lista_de_compras/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Preferences extends StatefulWidget {
  const Preferences({super.key});

  @override
  State<Preferences> createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  String _getNomeDoTema(ThemeMode modo) {
    switch (modo) {
      case ThemeMode.light:
        return 'Claro';
      case ThemeMode.dark:
        return 'Escuro';
      case ThemeMode.system:
        return 'Sistema';
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Preferências do usuário',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Aparência', style: TextStyle(fontSize: 16)),
            DropdownButton<ThemeMode>(
              value: themeProvider.themeMode,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 16,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge?.color,
                fontSize: 16,
              ),
              underline: const SizedBox(),
              onChanged: (ThemeMode? novoValor) {
                if (novoValor != null) {
                  themeProvider.setThemeMode(novoValor);
                }
              },
              items: ThemeMode.values.map<DropdownMenuItem<ThemeMode>>((
                ThemeMode modo,
              ) {
                return DropdownMenuItem<ThemeMode>(
                  value: modo,
                  child: Text(_getNomeDoTema(modo)),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
