import 'package:app_lista_de_compras/controllers/item_controller.dart';
import 'package:app_lista_de_compras/models/item.model.dart';
import 'package:app_lista_de_compras/widgets/add_item.widget.dart';
import 'package:app_lista_de_compras/widgets/my_item.widgets.dart';
import 'package:app_lista_de_compras/models/my_list.model.dart';
import 'package:flutter/material.dart';

class ItemsPage extends StatefulWidget {
  final MyList list;
  const ItemsPage({super.key, required this.list});

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  late final ItemController itemController;
  bool isSelected = false;

  void addItem() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (_) {
        return AddItem(items: itemController);
      },
    );
  }

  @override
  void initState() {
    itemController = ItemController(items: widget.list.items);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () => setState(() {}),
            child: const Text(
              'Atualizar',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 10.0,
            right: 20.0,
            bottom: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.list.listName,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Divider(),
              const SizedBox(height: 12.0),
              Flexible(
                child: AnimatedBuilder(
                  animation: itemController,
                  builder: (context, child) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: ListView.separated(
                            shrinkWrap: true,
                            itemCount: itemController.items.length,
                            itemBuilder: (context, index) {
                              Item item = itemController.items[index];
                              return Dismissible(
                                key: Key(item.id),
                                direction: DismissDirection.startToEnd,
                                background: Container(
                                  color: Colors.red,
                                  alignment: Alignment.centerLeft,
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  ),
                                ),
                                onDismissed: (direction) {
                                  itemController.removeItem(index);
                                  setState(() {});
                                },
                                child: MyItem(
                                  nome: item.name,
                                  value: item.value,
                                  isSelected: item.isCompleted,
                                  onTap: () =>
                                      itemController.toggleItemStatus(index),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 8.0),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Não Marcados'),
                        Text(
                          'R\$ ${widget.list.valueIncompletedItems.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 18.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Marcados'),
                        Text(
                          'R\$ ${widget.list.valuecompletedItems.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: FloatingActionButton.extended(
          extendedPadding: const EdgeInsets.symmetric(horizontal: 28.0),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          onPressed: addItem,
          label: const Text('Adicionar', style: TextStyle(fontSize: 16.0)),
        ),
      ),
    );
  }
}
