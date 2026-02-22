import 'package:app_lista_de_compras/models/item.model.dart';
import 'package:uuid/uuid.dart';

class MyList {
  final String _id;
  final String _listName;
  final List<Item> _items;

  MyList({required String listName, List<Item>? items})
    : _id = const Uuid().v4(),
      _listName = listName,
      _items = items ?? [];

  String get id => _id;

  String get listName => _listName;

  int get totalItems => _items.length;
  List<Item> get items => _items;

  int get completedItems => _items.where((item) => item.isCompleted).length;
  int get incompletedItems => _items.where((item) => !item.isCompleted).length;

  double get valuecompletedItems {
    var listCompleted = _items.where((item) => item.isCompleted);
    double total = 0;
    for (var item in listCompleted) {
      total = total + item.value;
    }
    return total;
  }

  double get valueIncompletedItems {
    var listCompleted = _items.where((item) => !item.isCompleted);
    double total = 0;
    for (var item in listCompleted) {
      total = total + item.value;
    }
    return total;
  }

  double get progress {
    if (totalItems == 0) return 0.0;
    return completedItems / totalItems;
  }
}
