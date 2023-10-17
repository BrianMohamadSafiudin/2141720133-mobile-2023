import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/StokRatingWidget.dart';
import 'package:flutter/material.dart';

class ItemCardDetailWidget extends StatelessWidget {
  const ItemCardDetailWidget({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StokRatingWidget(item: item, fontSz: 12),
          const SizedBox(height: 8),
          Text(item.name,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text('Rp${item.price.toString()}',
              style:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
        ],
      ),
    );
  }
}
