# Tugas Praktikum Pertemuan 9

### Nama : Brian Mohamad Safiudin
### NIM : 2141720133
### Kelas : TI-3F

# Praktikum Menerapkan Plugin di Project Flutter

## 1. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda.

# Tugas Praktikum

## Selesaikan Praktikum tersebut, lalu dokumentasikan dan push ke repository Anda berupa screenshot hasil pekerjaan beserta penjelasannya di file README.md!

### Langkah 1: Buat Project Baru
- Buatlah sebuah project flutter baru dengan nama flutter_plugin_pubdev. Lalu jadikan repository di GitHub Anda dengan nama flutter_plugin_pubdev.

### Langkah 2: Menambahkan Plugin
- Tambahkan plugin auto_size_text menggunakan perintah berikut di terminal. Jika berhasil, maka akan tampil nama plugin beserta versinya di file pubspec.yaml pada bagian dependencies.

### Langkah 3: Buat file red_text_widget.dart
- Buat file baru bernama red_text_widget.dart di dalam folder lib lalu isi kode.

### Langkah 4: Tambah Widget AutoSizeText
- Masih di file red_text_widget.dart, untuk menggunakan plugin auto_size_text, ubahlah kode return Container() menjadi seperti berikut. Setelah Anda menambahkan kode di atas, Anda akan mendapatkan info error. Mengapa demikian? Jelaskan dalam laporan praktikum Anda!

##### terjadi eror karena package AutoSizeText belum di import ke main, dan text belum dimasukkan ke container

### Langkah 5: Buat Variabel text dan parameter di constructor
- Tambahkan variabel text dan parameter di constructor.

### Langkah 6: Tambahkan widget di main.dart
- Buka file main.dart lalu tambahkan di dalam children: pada class _MyHomePageState

### Hasil Eksekusi Program
![ss](docs/hasil.gif)

## 2. Jelaskan maksud dari langkah 2 pada praktikum tersebut!
- Pada langkah 2, penjelasannya adalah bahwa perintah flutter pub add auto_size_text akan menambahkan plugin bernama auto_size_text ke proyek Flutter. Plugin ini akan ditambahkan ke berkas pubspec.yaml dalam bagian dependencies dan dapat diakses sebagai widget.

## 3. Jelaskan maksud dari langkah 5 pada praktikum tersebut!
- Langkah 5 menjelaskan bahwa variabel text ditambahkan ke constructor RedTextWidget dengan tipe data String dan diberi atribut required (wajib diisi dan tidak boleh null). Ini dilakukan agar variabel text bisa digunakan di berkas lain dan nilainya bisa diubah sesuai kebutuhan.

## 4. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!
- Pada langkah 6, terdapat dua widget yang ditambahkan. Keduanya berfungsi untuk menampilkan teks yang dibungkus dengan sebuah Container. Perbedaannya terletak pada warna, lebar (width), dan isi (child) dari Container. Widget Container pertama berwarna kuning, memiliki lebar 50, dan memiliki child yang menggunakan widget RedTextWidget dengan AutoSizeText, yang mengakibatkan hanya 2 baris teks ditampilkan dan sisa teks terpotong dengan elipsis. Sementara itu, Container kedua menggunakan widget Text, sehingga semua teks ditampilkan tanpa pemotongan.

## 5. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi ini !

| Parameter         | Description                                          |
| ----------------- | ---------------------------------------------------- |
| Key               | Digunakan untuk mengidentifikasi widget dalam widget tree Flutter. |
| textKey           | Key yang dapat digunakan untuk mengidentifikasi teks. |
| style             | Menentukan gaya teks, termasuk properti seperti ukuran font, warna, dan lainnya. |
| minFontSize       | Menentukan ukuran font minimum yang akan digunakan saat melakukan penyesuaian otomatis ukuran teks. |
| maxFontSize       | Menentukan ukuran font maksimum yang akan digunakan saat melakukan penyesuaian otomatis ukuran teks. |
| stepGranularity   | Digunakan saat menyesuaikan ukuran teks. |
| presetFontSizes   | Digunakan dalam penyesuaian ukuran teks. |
| group             | Digunakan untuk mengelompokkan beberapa widget AutoSizeText bersama untuk menyesuaikan ukuran teks mereka bersamaan. |
| textAlign         | Menentukan perataan teks, seperti 'kiri', 'tengah', 'kanan', dan sebagainya. |
| textDirection     | Menentukan arah teks, seperti 'kiri ke kanan' atau 'kanan ke kiri'. |
| locale            | Menentukan bahasa atau lokasi untuk penulisan teks. |
| softWrap          | Menentukan apakah teks akan dilipat secara otomatis ke baris berikutnya jika tidak cukup ruang. |
| wrapWords         | Menentukan perilaku teks saat tidak cukup ruang, misalnya 'ellipsis' akan menampilkan titik-titik jika teks terpotong. |
| overflow           | Menentukan perilaku teks saat tidak cukup ruang, misalnya 'ellipsis' akan menampilkan titik-titik jika teks terpotong |
| overflowReplacement | Widget alternatif yang akan ditampilkan sebagai pengganti teks yang terpotong. |
| textScaleFactor   | Faktor skala yang digunakan untuk memperbesar atau mengecilkan teks. |
| maxLines          | Jumlah maksimum baris teks yang akan ditampilkan. |
| semanticLabel     | Digunakan untuk aksesibilitas atau pembaca layar. |
