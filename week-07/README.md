# Tugas Praktikum Pertemuan 7

### Nama : Brian Mohamad Safiudin
### NIM : 2141720133
### Kelas : TI-3F

# Praktikum 1: Membangun Layout di Flutter

## Langkah 1: Buat Project Baru
#### Buatlah sebuah project flutter baru dengan nama layout_flutter. Atau sesuaikan style laporan praktikum yang Anda buat.

## Langkah 2: Buka file lib/main.dart
#### Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.
```
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Nama dan NIM Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```

## Langkah 3: Identifikasi layout diagram
#### Pertama, identifikasi elemen yang lebih besar. Dalam contoh ini, empat elemen disusun menjadi sebuah kolom: sebuah gambar, dua baris, dan satu blok teks.
#### Selanjutnya, buat diagram setiap baris. Baris pertama, disebut bagian Judul, memiliki 3 anak: kolom teks, ikon bintang, dan angka. Anak pertamanya, kolom, berisi 2 baris teks. Kolom pertama itu memakan banyak ruang, sehingga harus dibungkus dengan widget yang Diperluas.
#### Baris kedua, disebut bagian Tombol, juga memiliki 3 anak: setiap anak merupakan kolom yang berisi ikon dan teks.
#### Setelah tata letak telah dibuat diagramnya, cara termudah adalah dengan menerapkan pendekatan bottom-up. Untuk meminimalkan kebingungan visual dari kode tata letak yang banyak bertumpuk, tempatkan beberapa implementasi dalam variabel dan fungsi.

## Hasil Running Praktikum 1
![ss](docs/P1L3.png)  
#### Pada Praktikum 1 kita membuat widget baru bernama titleSection yang berisi beberapa widget dan menampilkan Text serta Icon dalam 1 row

# Praktikum 2: Implementasi button row

## Langkah 1: Buat method Column _buildButtonColumn
```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ···
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
```

## Langkah 2: Buat widget buttonSection
```
Color color = Theme.of(context).primaryColor;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);
```

## Langkah 3: Tambah button section ke body

## Hasil Run Praktikum 2
![ss](docs/P2L3.png)  
#### pada praktikum 2 ditambahkan 1 widget bernama buttonSection yang ambil dari metod _buildButtonColumn untuk menampilkan 3 icon, 3 label, dan warna.

## Praktikum 3: Implementasi text section

## Langkah 1: Buat widget textSection
```
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Carilah teks di internet yang sesuai '
    'dengan foto atau tempat wisata yang ingin '
    'Anda tampilkan. '
    'Tambahkan nama dan NIM Anda sebagai '
    'identitas hasil pekerjaan Anda. '
    'Selamat mengerjakan 🙂.',
    softWrap: true,
  ),
);
```
![ss](docs/P3L1.png)

## Langkah 2: Tambahkan variabel text section ke body
![ss](docs/P3L2.png)

## Hasil Run Praktikum 3
#### menambahkan berupa text dibawah icon2

## Praktikum 4: Implementasi image section

## Langkah 1: Siapkan aset gambar
#### Anda dapat mencari gambar di internet yang ingin ditampilkan. Buatlah folder images di root project layout_flutter. Masukkan file gambar tersebut ke folder images, lalu set nama file tersebut ke file pubspec.yaml seperti berikut: Contoh nama file gambar di atas adalah lake.jpg
![ss](docs/P4L1.png)

## Langkah 2: Tambahkan gambar ke body
#### Tambahkan aset gambar ke dalam body seperti berikut:
![ss](docs/P4L2.png)
#### BoxFit.cover memberi tahu kerangka kerja bahwa gambar harus sekecil mungkin tetapi menutupi seluruh kotak rendernya.

## Langkah 3: Terakhir, ubah menjadi ListView
#### Pada langkah terakhir ini, atur semua elemen dalam ListView, bukan Column, karena ListView mendukung scroll yang dinamis saat aplikasi dijalankan pada perangkat yang resolusinya lebih kecil.
![ss](docs/P4L3.png)

## Hasil Run Praktikum 4
#### menambahkan berupa gambar yang diupload ke folder assets lalu dipanggil ke body main.dart

## Hasil Akhir Praktikum
![ss](docs/runfix.png)  
#### disini saya mengubah nama dan lokasi dan mengubah children column menjadi listview agar bisa discroll ke atas bawah

# Tugas Praktikum 1

## Selesaikan Praktikum 1 sampai 4, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md!
#### Sudah selesai diatas.

## Silakan implementasikan di project baru "basic_layout_flutter" dengan mengakses sumber ini: https://docs.flutter.dev/codelabs/layout-basics

| judul | sebelum di ubah | setelah di ubah | Keterangan |
| :---: | :-------------: | :-------------: | :--------: |
| Row and Column classes | ![ss](docs/T2_1_ROW.png) | ![ss](docs/T2_1_Column.png) | mengubah widget Row() menjadi Column(), jelas terlihat perubahan |
| Axis size and alignment |
| mainAxisSize property | ![ss](docs/T2_2_max.png) | ![ss](docs/T2_2_min.png) | mengubah mainAxisSize.max menjadi mainAxisAlignment.min, seperti tidak terlihat perubahan pada gambar |
| mainAxisAlignment property | ![ss](docs/T2_3_start.png) | ![ss](docs/T2_3_end.png) | mengubah mainAxisAlignment.start menjadi mainAxisAlignment.end merubah posisi bluebox dari pojok kiri ke pojok kanan |
| crossAxisAlignment property | ![ss](docs/T2_4_center.png) | ![ss](docs/T2_4_start.png) | mengubah crossAxisAlignment.center menjadi crossAxisAlignment.start mengubah posisi bluebox kecil dari tengah menjadi lebih ke atas |
| Flexible widget | ![ss](docs/T2_5_loose.png) | ![ss](docs/T2_5_tight.png) | mengubah flexFit.loose menjadi flexFit.tight dimana flexFit.loose tidak bisa memanjang melebihi ukuran namun bisa menyusut, sedangkan tight bisa memanjang tanpa melebihi layar tapi juga tidak menjadikan full dan menyusut |
| Expanded widget | ![ss](docs/T2_6_bluebox.png) | ![ss](docs/T2_6_expanded.png) | wrap bluebox yang kedua dengan widget expanded menjadikan bluebox kedua bisa memanjang sampai ke full layar tanpa melebihi layar tsb | 
| SizedBox widget | ![ss](docs/T2_7_ori.png) | ![ss](docs/T2_7_addHeight.png) | mengubah bluebox kedua dengan menambahkan height dan weight sesuai dengan yang di inputkan user |
| Spacer widget | ![ss](docs/T2_8_ori.png) | ![ss](docs/T2_8_addSpacer.png) | menambahkan satu spacer(flex: 1) diantara bluebox 2 dan 3 menjadikan bluebox kedua ke tengah
| Text Widget | ![ss](docs/T2_9_center.png) | ![ss](docs/T2_9_baseline.png) | mengubah crossAxisAlignment.center ke crossAxisAlignment.baseline merubah text yang awalnya sejajar di tengah menjadi sejajar dari bawah
| Icon Widget | ![ss](docs/T2_10_ori.png) | ![ss](docs/T2_10_addIcon.png) | menambahkan satu icons.widget dengan warna amber
| Image Widget | ![ss](docs/T2_11_ori.png) | ![ss](docs/T2_11_img1.png) ![ss](docs/T2_11_img2.png) ![ss](docs/T2_11_img3.png) | menambahkan link pada image.network dengan link dan mengubah pic1 dengan pic2 dan juga pic3
| putting it all together | part 1  ![ss](docs/T2_12_part1.png) | part 2  ![ss](docs/T2_12_part2.png)  part 3  ![ss](docs/T2_12_part3.png) | menambahkan semua yang telah dipelajari menjadi satu