import 'package:app_lista_de_compras/controllers/list_controller.dart';
import 'package:app_lista_de_compras/widgets/button_primary.widget.dart';
import 'package:app_lista_de_compras/widgets/button_secundary.widget.dart';
import 'package:flutter/material.dart';

class ListCreatePage extends StatelessWidget {
  ListCreatePage({super.key, required this.lists});
  final ListController lists;
  final TextEditingController listName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 4),
                TextFormField(
                  controller: listName,
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
                      child: ButtonPrimary(
                        onTap: () {
                          lists.listCreate(listName: listName.text);
                          listName.text = '';
                          Navigator.of(context).pop();
                        },
                        text: 'Criar',
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
