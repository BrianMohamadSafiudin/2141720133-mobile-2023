import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatefulWidget {
  const RatingWidget({
    super.key,
    required this.item,
    this.fontSz,
  });

  final Item item;
  final double? fontSz;

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 5; i++)
          (i < widget.item.rating.floor())
              ? Icon(Icons.star, size: widget.fontSz, color: Colors.amber)
              : Icon(Icons.star_border,
                  size: widget.fontSz, color: Colors.amber),
        const SizedBox(width: 4),
        Text(
          widget.item.rating.toString(),
          style: TextStyle(fontSize: widget.fontSz),
        ),
      ],
    );
  }
}
