import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget titleSection = Container(
    child: Padding(
      padding: const EdgeInsets.all(32),
      child: Row(children: [
        Expanded(
          // Soal 1
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Soal 2
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    // 'Wisata Gunung di Batu',
                    'Pantai Ngudel',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Text(
                // 'Batu, Malang, Indonesia',
                'Gedangan, Kabupaten Malang, Indonesia',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        // Soal 3
        Icon(
          Icons.star,
          color: Colors.red,
        ),
        const Text('41')
      ]),
    ),
  );

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    Widget textSection = Container(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: const Text(
          'Pantai Ngudel terletak di Desa Sindurejo, Kecamatan Gedangan, Kabupaten Malang, Jawa Timur. '
          'Pantai Ngudel berbatasan langsung dengan Samudera Hindia,'
          'sehingga mempunyai gelombang yang cukup tinggi. Destinasi wisata ini banyak diminati oleh wisatawan lokal maupun luar kota. '
          'Keunikan Pantai Ngudel adalah adanya pohon cemara udang yang membuat kawasan pantai terasa sejuk. '
          'Wisatawan dapat camping atau sekedar santai-santai di gazebo yang telah tersedia. \n\n'
          'Brian Mohamad Safiudin | 2141720133',
          softWrap: true,
        ),
      ),
    );
    return MaterialApp(
      title: 'Flutter Layout: Brian Mohamad Safiudin - 2141720133',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter layout demo'),
          ),
          body: ListView(
            children: [
              Image.asset(
                'assets/pantai.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection
            ],
          )),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: color),
          ),
        )
      ],
    );
  }
}
