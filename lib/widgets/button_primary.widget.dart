import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final void Function() onTap;
  final String text;

  const ButtonPrimary({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.blue),
      ),
    );
  }
}
