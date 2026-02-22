import 'package:app_lista_de_compras/models/item.model.dart';
import 'package:flutter/material.dart';

class ItemController extends ChangeNotifier {
  final List<Item> _items;

  ItemController({required List<Item> items}) : _items = items;

  List<Item> get items => _items;

  void addItem({required Item item}) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(int index) {
    _items.remove(_items[index]);
    notifyListeners();
  }

  void toggleItemStatus(int index) {
    items[index].status();
    notifyListeners();
  }
}
