import 'package:app_lista_de_compras/controllers/list_controller.dart';
import 'package:app_lista_de_compras/widgets/button_primary.widget.dart';
import 'package:app_lista_de_compras/widgets/button_secundary.widget.dart';
import 'package:flutter/material.dart';

class ListCreatePage extends StatelessWidget {
  ListCreatePage({super.key, required this.lists});
  final ListController lists;
  final TextEditingController listName = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 4),
                TextFormField(
                  key: const Key("listNameInput"),
                  controller: listName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
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
                        key: const Key("backToListsBtn"),
                        onTap: () => Navigator.of(context).pop(),
                        text: 'Voltar',
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ButtonPrimary(
                        key: const Key("createListBtn"),
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            lists.listCreate(listName: listName.text);
                            listName.clear();
                            Navigator.of(context).pop();
                          }
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
