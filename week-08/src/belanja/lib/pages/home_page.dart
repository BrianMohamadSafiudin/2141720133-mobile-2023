import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/FooterWidget.dart';
import 'package:belanja/widgets/ImageHero.dart';
import 'package:belanja/widgets/ItemCardDetailWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: "Sugar",
        price: 5000,
        stok: 8,
        rating: 4,
        image: Image.asset(
          'images/sugar.jpg',
          width: 200,
          height: 400,
          fit: BoxFit.cover,
        ),
        deskripsi:
            'Gula Pasir Organik Berkualitas Premium, yang berasal dari tebu alami.'),
    Item(
        name: "Salt",
        price: 4000,
        stok: 14,
        rating: 5,
        image: Image.network(
          'https://manoa.hawaii.edu/exploringourfluidearth/sites/default/files/M2U2-SF%20Fig2-2A%20saltshaker.png',
          width: 200,
          height: 400,
          fit: BoxFit.cover,
        )),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(children: [
            SizedBox(width: 4),
            Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            SizedBox(width: 8),
            Text('Shopping List',
                style: TextStyle(fontSize: 20, color: Colors.black)),
          ]),
          backgroundColor: Colors.grey[100],
        ),
        body: Container(
            margin: const EdgeInsets.all(8.0),
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/item', arguments: item);
                  },
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(children: [
                      ImageHero(item: item),
                      ItemCardDetailWidget(item: item)
                    ]),
                  ),
                );
              },
            )),
        bottomNavigationBar: const FooterWidget());
  }
}
