import 'package:app_lista_de_compras/models/item.model.dart';
import 'package:app_lista_de_compras/models/my_list.model.dart';
import 'package:app_lista_de_compras/pages/list_create_page.dart';
import 'package:app_lista_de_compras/widgets/list_card.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MyList> _lists = [
    MyList(
      listName: 'Mercado',
      items: [
        Item(name: 'Maçã', value: 5.00, isCompleted: true),
        Item(name: 'Leite', value: 10.00, isCompleted: true),
      ],
    ),
    MyList(
      listName: 'Livros',
      items: [
        Item(name: 'Narnia', value: 64.90, isCompleted: true),
        Item(name: 'O hobbit', value: 74.00),
        Item(name: 'O hobbit 2', value: 74.00, isCompleted: true),
      ],
    ),
  ];

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
        child: _lists.isEmpty
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
            : ListView.separated(
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 8.0),
                itemCount: _lists.length,
                itemBuilder: (context, index) {
                  MyList list = _lists[index];
                  return ListCard(
                    completeItems: '${list.completedItems}/${list.totalItems}',
                    listName: list.listName,
                    progress: list.progress,
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
              MaterialPageRoute(builder: (context) => const ListCreatePage()),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
