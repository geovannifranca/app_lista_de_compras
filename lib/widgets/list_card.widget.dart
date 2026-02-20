import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final String completeItems;
  final String listName;
  final double progress;

  const ListCard({
    super.key,
    required this.completeItems,
    required this.listName,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(listName, style: const TextStyle(fontSize: 18.0)),
                Text(
                  completeItems,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFF4CAF50),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14.0),
            LinearProgressIndicator(
              color: const Color(0xFF4CAF50),
              value: progress,
            ),
          ],
        ),
      ),
    );
  }
}
