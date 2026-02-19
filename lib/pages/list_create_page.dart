import 'package:flutter/material.dart';

class ListCreatePage extends StatelessWidget {
  const ListCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Nome da lista',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Volatr'),
                  ),
                  FilledButton(onPressed: () {}, child: const Text('Criear')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
