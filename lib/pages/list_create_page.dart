import 'package:app_lista_de_compras/controllers/list_controller.dart';
import 'package:app_lista_de_compras/theme/app_color_scheme.dart';
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
    final colors = Theme.of(context).extension<AppColorSchema>()!;
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? colors.backgroundColor
          : colors.primaryColor,
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
                  key: const Key("inputNameList"),
                  controller: listName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Nome da lista',
                    hintStyle: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? colors.backgroundColor
                          : null,
                    ),
                    filled: true,
                    fillColor: colors.textColor,
                  ),
                ),
                const Spacer(flex: 4),
                const SizedBox(height: 24.0),
                Row(
                  children: [
                    Expanded(
                      child: ButtonSecundary(
                        key: const Key("btnBackList"),
                        onTap: () => Navigator.of(context).pop(),
                        text: 'Voltar',
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ButtonPrimary(
                        key: const Key("btnCreateList"),
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
