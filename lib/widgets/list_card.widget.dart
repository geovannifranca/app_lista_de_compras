import 'package:app_lista_de_compras/theme/app_color_scheme.dart';
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
    final colors = Theme.of(context).extension<AppColorSchema>()!;

    return Card(
      color: colors.cardColor ?? Colors.white,
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
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? colors.textColor
                        : colors.primaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14.0),
            LinearProgressIndicator(
              backgroundColor: Theme.of(context).brightness == Brightness.dark
                  ? colors.textColor
                  : Colors.black45,
              color: colors.primaryColor,
              value: progress,
            ),
          ],
        ),
      ),
    );
  }
}
