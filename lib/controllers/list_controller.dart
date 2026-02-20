import 'package:app_lista_de_compras/models/item.model.dart';
import 'package:app_lista_de_compras/models/my_list.model.dart';
import 'package:flutter/material.dart';

class ListController extends ChangeNotifier {
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

  List<MyList> get lists => _lists;

  void listCreate({required String listName}) {
    _lists.add(MyList(listName: listName));
    notifyListeners();
  }
}
