import 'package:app_lista_de_compras/models/my_list.model.dart';
import 'package:flutter/material.dart';

class ListController extends ChangeNotifier {
  final List<MyList> _lists = [];

  List<MyList> get lists => _lists;

  void listCreate({required String listName}) {
    _lists.add(MyList(listName: listName));
    notifyListeners();
  }

  void removeItem(int index) {
    _lists.remove(_lists[index]);
    notifyListeners();
  }
}
