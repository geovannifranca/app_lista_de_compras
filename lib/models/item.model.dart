import 'package:uuid/uuid.dart';

class Item {
  final String _id;
  final String _name;
  final double _value;
  final bool _isCompleted;
  Item({required String name, required double value, bool isCompleted = false})
    : _id = const Uuid().v4(),
      _name = name, // Repassa para a variável privada
      _value = value, // Repassa para a variável privada
      _isCompleted = isCompleted;

  String get id => _id;
  String get name => _name;
  double get value => _value;
  bool get isCompleted => _isCompleted;
}
