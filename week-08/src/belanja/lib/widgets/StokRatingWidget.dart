import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/RatingWidget.dart';
import 'package:flutter/material.dart';

class StokRatingWidget extends StatefulWidget {
  const StokRatingWidget({
    super.key,
    required this.item,
    this.fontSz,
  });

  final Item item;
  final double? fontSz;

  @override
  State<StokRatingWidget> createState() => _StokRatingWidgetState();
}

class _StokRatingWidgetState extends State<StokRatingWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Stok: ${widget.item.stok.toString()}',
            style: TextStyle(
                color:
                    widget.item.stok < 10 ? Colors.red[300] : Colors.green[300],
                fontSize: 12)),
        RatingWidget(item: widget.item, fontSz: widget.fontSz),
      ],
    );
  }
}
