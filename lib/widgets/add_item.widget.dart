import 'package:app_lista_de_compras/controllers/item_controller.dart';
import 'package:app_lista_de_compras/models/item.model.dart';
import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  const AddItem({super.key, required this.items});

  final ItemController items;

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  final TextEditingController name = TextEditingController();

  final TextEditingController value = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    name.dispose();
    value.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Adicionar Item',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close, size: 30),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            const Divider(thickness: 2),
            const SizedBox(height: 16.0),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Campo Obrigatório';
                }
                return null;
              },
              controller: name,
              decoration: const InputDecoration(
                hintText: 'Nome do Item',
                border: InputBorder.none,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Campo Obrigatório';
                }
                return null;
              },
              controller: value,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              decoration: const InputDecoration(
                hintText: 'R\$ 0,00',
                border: InputBorder.none,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      String valorTratado = value.text.replaceAll(',', '.');
                      widget.items.addItem(
                        item: Item(
                          name: name.text,
                          value: double.tryParse(valorTratado) ?? 0.0,
                        ),
                      );

                      name.clear();
                      value.clear();
                      Navigator.of(context).pop();
                    }
                  },
                  child: const Text('Adicionar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
