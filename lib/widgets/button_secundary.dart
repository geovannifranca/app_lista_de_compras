import 'package:flutter/material.dart';

class ButtonSecundary extends StatelessWidget {
  final void Function() onTap;
  final String text;

  const ButtonSecundary({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.white),
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
