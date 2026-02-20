import 'package:app_lista_de_compras/widgets/button_primary.widget.dart';
import 'package:app_lista_de_compras/widgets/button_secundary.widget.dart';
import 'package:flutter/material.dart';

class ListCreatePage extends StatelessWidget {
  const ListCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 4),
              TextFormField(
                validator: (value) => '',
                decoration: const InputDecoration(
                  hintText: 'Nome da lista',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const Spacer(flex: 4),
              const SizedBox(height: 24.0),
              Row(
                children: [
                  Expanded(
                    child: ButtonSecundary(
                      onTap: () => Navigator.of(context).pop(),
                      text: 'Cancelar',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ButtonPrimary(onTap: () {}, text: 'Criar'),
                  ),
                ],
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
