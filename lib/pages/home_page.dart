import 'package:app_lista_de_compras/controllers/list_controller.dart';
import 'package:app_lista_de_compras/models/my_list.model.dart';
import 'package:app_lista_de_compras/pages/items_page.dart';
import 'package:app_lista_de_compras/pages/list_create_page.dart';
import 'package:app_lista_de_compras/widgets/list_card.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ListController _lists = ListController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Minhas Listas', style: TextStyle(fontSize: 24.0)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.diamond, color: Colors.amber, size: 30.0),
          ),
        ],
      ),
      body: SafeArea(
        child: _lists.lists.isEmpty
            ? Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/lista-de-compras.png',
                      width: 120,
                    ),
                    const SizedBox(height: 46),
                    const Text(
                      'Crie sua primeira lista\nToque no botão azul',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              )
            : AnimatedBuilder(
                animation: _lists,
                builder: (_, child) {
                  return ListView.separated(
                    separatorBuilder: (_, index) => const SizedBox(height: 8.0),
                    itemCount: _lists.lists.length,
                    itemBuilder: (context, index) {
                      MyList list = _lists.lists[index];
                      return GestureDetector(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemsPage(list: list),
                            ),
                          );
                          setState(() {});
                        },
                        child: ListCard(
                          completeItems:
                              '${list.completedItems}/${list.totalItems}',
                          listName: list.listName,
                          progress: list.progress,
                        ),
                      );
                    },
                  );
                },
              ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: const CircleBorder(),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListCreatePage(lists: _lists),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
