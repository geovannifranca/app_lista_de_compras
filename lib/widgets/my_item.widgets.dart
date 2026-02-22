import 'package:flutter/material.dart';

class MyItem extends StatelessWidget {
  final String nome;
  final double value;
  final bool isSelected;
  final VoidCallback onTap;

  const MyItem({
    super.key,
    required this.nome,
    required this.value,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 34,
          height: 34,
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF4CAF50) : null,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blue),
          ),
          child: isSelected
              ? const Icon(Icons.check, size: 34, color: Colors.white)
              : null,
        ),
      ),
      title: !isSelected
          ? Text(nome, style: const TextStyle(fontSize: 20.0))
          : Text(
              nome,
              style: const TextStyle(color: Colors.black26, fontSize: 20.0),
            ),
      trailing: !isSelected
          ? Text(
              'R\$ ${value.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20.0),
            )
          : Text(
              'R\$ ${value.toStringAsFixed(2)}',
              style: const TextStyle(color: Colors.black26, fontSize: 20.0),
            ),
    );
  }
}
