import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ImageHero extends StatelessWidget {
  const ImageHero({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Hero(
      tag: 'imageHero${item.name}',
      child: item.image,
    ));
  }
}
