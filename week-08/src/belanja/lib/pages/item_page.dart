import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

import '../widgets/StokRatingWidget.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: Text('Item Detail: ${itemArgs.name}',
              style: const TextStyle(fontSize: 20, color: Colors.black)),
          backgroundColor: Colors.grey[100],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
                height: 240,
                child: Row(
                  children: [
                    Expanded(
                        child: Hero(
                      tag: 'imageHero${itemArgs.name}',
                      child: itemArgs.image,
                    )),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StokRatingWidget(item: itemArgs, fontSz: 20),
                  const SizedBox(height: 4),
                  Text(itemArgs.name,
                      style: const TextStyle(
                          fontSize: 26, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text('Rp${itemArgs.price.toString()}',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          itemArgs.deskripsi.isEmpty
                              ? 'Belum ada deskripsi'
                              : 'Deskripsi produk',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 6),
                      Text(itemArgs.deskripsi,
                          style: const TextStyle(fontSize: 14)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Brian Mohamad S.',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: '2141720133'),
          ],
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
        ));
  }
}
