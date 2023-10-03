# Tugas Praktikum Pertemuan 6

### Nama : Brian Mohamad Safiudin
### NIM : 2141720133
### Kelas : TI-3F

# Praktikum 1: Menerapkan Gesture Detector

## Langkah 1 : Buat Project Baru
#### Buatlah sebuah project flutter baru dengan nama flutter_fundamental_3. Lalu jadikan repository di GitHub Anda dengan nama flutter-fundamental-part3.

## Langkah 2
#### Buka file main.dart lalu ganti bagian body dengan kode berikut. Untuk MyImageWidget() dapat Anda ganti dengan widget milik Anda sendiri.
![Screenshot P1L2](docs/praktikum1langkah2.png)

## Langkah 3
#### Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya. Apa yang terjadi ? Jika terjadi error, silakan perbaiki.
![Screenshot P1L3](docs/praktikum1langkah3.png)
###### Kode diatas membuat variabel list yang bersifat final, memiliki panjang 5, dan elemen default adalah null, kemudian mengisi elemen index 1 dan 2 dengan nama dan NIM, dan mencetak hasilnya

# Praktikum 2: Eksperimen Tipe Data Set

## Langkah 1
#### Ketik atau salin kode program berikut ke dalam fungsi main().
###### var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
###### print(halogens);

## Langkah 2
#### Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
![Screenshot P2L2](docs/praktikum2langkah2.png)
###### Kode diatas error merupakan penggunaan variabel dan array (atau daftar) dalam beberapa bahasa pemrograman yang berbeda. Kode tersebut membuat sebuah daftar (list) yang berisi elemen-elemen yang mewakili unsur-unsur halogen dalam tabel periodik.

## Langkah 3
#### Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda. Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.
![Screenshot P2L3](docs/praktikum2langkah3.png)
###### Kode diatas mencoba mendefinisikan tiga variabel yang berbeda untuk menyimpan data koleksi, namun memiliki hasil yang berbeda. Variabel names1 dan names2 berhasil mendefinisikan set kosong yang berisi elemen bertipe String, tetapi names3 sebenarnya membuat sebuah map (kumpulan pasangan kunci-nilai) kosong, bukan sebuah set, karena Dart tidak dapat secara otomatis menentukan tipe dari {}

#### Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.
![Screenshot P2LF](docs/praktikum2langkahfinal.png)

# Praktikum 3: Eksperimen Tipe Data Maps

## Langkah 1
#### Ketik atau salin kode program berikut ke dalam fungsi main().
###### var gifts = {
######   // Key:    Value
######   'first': 'partridge',
######   'second': 'turtledoves',
######   'fifth': 1
###### };

###### var nobleGases = {
######   2: 'helium',
######   10: 'neon',
######   18: 2,
###### };

###### print(gifts);
###### print(nobleGases);

## Langkah 2
#### Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
![Screenshot P3L2](docs/praktikum3langkah2.png)
###### Kode diatas menggunakan map dalam bahasa pemrograman Dart, yang memungkinkan penyimpanan pasangan kunci-nilai. Dua map, yaitu 'gifts' dan 'nobleGases', dibuat dengan berbagai jenis nilai sebagai elemen. 'gifts' memiliki kunci berupa string ('first', 'second', 'fifth') dan nilai yang beragam, termasuk string dan integer, sementara 'nobleGases' memiliki kunci berupa bilangan bulat dan nilai yang juga beragam. Map ini digunakan untuk mengorganisir dan mengakses data dengan cara yang terstruktur, dan hasilnya dicetak ke konsol untuk ditampilkan.

## Langkah 3
#### Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda. Apa yang terjadi ? Jika terjadi error, silakan perbaiki.
![Screenshot P3L3](docs/praktikum3langkah3.png)
###### Kode di atas memiliki beberapa kesalahan:

###### Variabel mhs1 dan mhs2 dideklarasikan sebagai map baru, tetapi dalam kode selanjutnya, mencoba untuk mengakses dan mengubah nilai di dalam gifts dan nobleGases. Seharusnya menggunakan gifts dan nobleGases yang sudah dideklarasikan sebelumnya, bukan variabel mhs1 dan mhs2.

###### Pada bagian gifts, mencoba untuk mengubah nilai kunci 'first' dari 'partridge' menjadi 'golden rings', tetapi perlu menggunakan variabel gifts untuk melakukan ini, bukan mhs1.

###### Pada bagian nobleGases, mencoba untuk mengubah nilai dengan kunci 18 menjadi 'argon', tetapi Anda perlu menggunakan variabel nobleGases juga di sini, bukan mhs2.

#### Kode yang sudah diperbaiki
![Screenshot P3LB](docs/praktikum3langkahbenar.png)

#### Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!
![Screenshot P3LB](docs/praktikum3langkahfinal.png)

# Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators

## Langkah 1
#### Ketik atau salin kode program berikut ke dalam fungsi main().
###### var list = [1, 2, 3];
###### var list2 = [0, ...list];
###### print(list1);
###### print(list2);
###### print(list2.length);

## Langkah 2
#### Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
![Screenshot P4L2](docs/praktikum4langkah2.png)
###### Kode diatas error karena dalam pernyataan print, mencoba untuk mencetak variabel list1 yang sebenarnya tidak dideklarasikan.

#### Kode yang sudah diperbaiki
![Screenshot P4L2B](docs/praktikum4langkah2benar.png)

## Langkah 3
#### Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
![Screenshot P4L3](docs/praktikum4langkah3.png)
###### Kode diatas error karena list1 tidak didefine / inisialisasi tipe datanya.

#### Kode yang sudah diperbaiki
![Screenshot P4L3B](docs/praktikum4langkah3benar.png)

## Langkah 4
#### Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.
![Screenshot P4L4](docs/praktikum4langkah4.png)
###### Kode diatas error karena Nama 'promoAktif' berupa boolean dan tidak ditentukan valuenya.

#### Kode yang sudah diperbaiki
![Screenshot P4L4B](docs/praktikum4langkah4benar.png)

## Langkah 5
#### Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.
###### var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
###### print(nav2);

###### Kode diatas error karena 'login' tidak ter-define / kondisi yang salah.

#### Kode yang sudah diperbaiki
![Screenshot P4L5](docs/praktikum4langkah5.png)

## Langkah 6
#### Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.

![Screenshot P4L6](docs/praktikum4langkah6.png)

###### Kode diatas menggunakan ekspresi koleksi (for) untuk membuat list baru listOfStrings berdasarkan nilai dari listOfInts

####  Manfaat Collection For
###### Adalah memungkinkan untuk membuat list baru atau mengubah list yang sudah ada secara efisien berdasarkan data yang ada dalam list lainnya.

# Praktikum 5: Eksperimen Tipe Data Records

## Langkah 1
#### Ketik atau salin kode program berikut ke dalam fungsi main().
###### var record = ('first', a: 2, b: true, 'last');
###### print(record)

## Langkah 2
#### Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
###### Kode diatas error karena tidak diberi ";" diakhir kode program
#### Kode yang sudah diperbaiki
![Screenshot P5L2](docs/praktikum5langkah2.png)

## Langkah 3
#### Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.
![Screenshot P5L3](docs/praktikum5langkah3.png)

###### Fungsi tukar() pada kode diatas harus dipanggil dari dalam main() agar dapat dieksekusi. Karena fungsi tukar() tidak dipanggil, maka tidak akan dieksekusi.

#### Kode yang sudah diperbaiki
![Screenshot P5L3B](docs/praktikum5langkah3benar.png)

## Langkah 4
#### Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya!
![Screenshot P5L4](docs/praktikum5langkah4.png)

###### Kode diatas error karena variabel 'mahasiswa' non-nullable harus ditetapkan sebelum dapat digunakan.

#### Kode yang sudah diperbaiki
![Screenshot P5L4B](docs/praktikum5langkah4benar.png)

## Langkah 5
#### Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!

![Screenshot P5L5](docs/praktikum5langkah5.png)

###### Kode diatas merupakan penggunaan tuple (pasangan nilai) dengan penamaan field yang dapat diakses menggunakan sintaks $. Kode tersebut membuat sebuah tuple yang berisi nama dan NIM, kemudian mencetaknya ke konsol.

# Tugas Praktikum
#### 1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!
###### Selesai

#### 2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
###### Fungsi dalam dart adalah objek yang memiliki tipe. fungsi dapat diteruskan sebagai argumen ke fungsi lain. Kita dapat memanggil instance kelas Dart seolah-olah itu adalah sebuah fungsi.

#### 3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya! 
jawab  
- required positional parameters
  ```dart
  sayHappyBirthday(String name, int age) {
    return "$name is ${age.toString()} years old";
    }
  ```
  ```dart
  //to call this function in main
  sayHappyBirthday("Laura", 21);
  ```
- optional positional parameters
  ```dart
  sayHappyBirthday(String name, [int? age]) {
    return "$name is $age years old";}
  ```
  or
  ```dart
  sayHappyBirthday(String name, [int age = 21]) {
    return "Happy birthday $name! You are $age years old.";}
  ```
  ```dart
  //to call
  void main() {
    var hello = sayHappyBirthday('Robert');
    print(hello);}// Prints Happy birthday Robert! You are 21 years old
  ```
- named parameters
  ```dart
  void greet({String name, int age}) {
  print("Hello, $name! You are $age years old.");
  }greet(age: 25, name: "Alice");  // Output: Hello, Alice! You are 25 years old.
  ```
- default parameters
  ```dart
  void greet(String name, {String message = "Hello"}) {
  print("$message, $name!");
  }
  greet("Alice");  // Output: Hello, Alice!
  greet("Bob", message: "Hi");  // Output: Hi, Bob!
  ```

#### 4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
###### Functions adalah first-class objects. Ini berarti fungsi dalam Dart dapat diperlakukan seperti objek lainnya, seperti integer, string, atau list. Kita dapat menyimpan fungsi dalam variabel, meneruskannya sebagai argumen ke fungsi lain, mengembalikannya sebagai nilai dari fungsi, atau membuatnya secara dinamis.

#### 5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
###### Anonymous functions (fungsi anonim) adalah fungsi yang tidak memiliki nama identifikasi yang spesifik. Mereka juga dikenal sebagai lambda functions, function literals, atau arrow functions, tergantung pada bahasa pemrograman yang digunakan. Fungsi anonim biasanya digunakan ketika kita hanya perlu menggunakan fungsi tersebut dalam konteks tertentu dan tidak perlu memberinya nama.
```dart
void main() {
List = [1, 2, 3, 4];
list.forEach((number) => print('hello $number'));
}
```

#### 6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
jawab  
- Lexical Scope
  ```Lexical scope (lingkup leksikal) mengacu pada cara variabel diresolusi berdasarkan struktur fisik kode pada saat kompilasi. Dalam lexical scope, akses variabel ditentukan oleh lokasi di mana variabel tersebut dideklarasikan dalam kode. jadi inner function dapat mengakses variabel ke tingkat global```
  ```dart
  globalFunction() {
    print("Top-level globalFunction");
    }
    simpleFunction() { 
        print("SimpleFunction"); 
        globalFunction() {
            print("Nested globalFunction");
    }
        globalFunction();
    }
    main() {
        simpleFunction();
        globalFunction();
    }
    //output simpleFunction Nested globalFunction Top-level globalFunction
  ```
  ```Saat main memanggil simpleFunction maka fungsi nested globalFunction didefinisikan, memblokir akses ke top-level globalFunction. Kapan globalFunction dipanggil, itu adalah versi nested yang dipanggil.Sebaliknya, ketika fungsi main memanggil fungsi globalFunction, fungsi globalFunction top-level dipanggil karena, dalam lingkup ini, nested fungsi globalFunction dari simpleFunction tidak didefinisikan.Oleh karena itu, output dari memanggil metode utama adalah ini```
  - simple function
  - nested globalFunction
  - top-level globalFunction
- Lexical Closures
  ```Lexical closures (penutupan leksikal) mengacu pada kemampuan fungsi untuk mengakses dan "mengingat" variabel yang ada dalam lingkup leksikal fungsi tersebut, bahkan setelah fungsi tersebut selesai dieksekusi atau dikeluarkan dari lingkup aslinya.```
  ```dart
  Function outerFunction() {
  int x = 10;

  Function innerFunction() {
    return () {
      print(x); // Mengakses variabel x dari outerFunction
    };
  }

  return innerFunction();
  }
  void main() {
  var closure = outerFunction();
  closure(); // Output: 10
    }
  ```
  ```Dalam lexical closures, fungsi "mengunci" (mengabadikan) referensi ke variabel yang ada dalam lingkup leksikalnya, sehingga variabel tersebut tetap dapat diakses bahkan setelah fungsi tersebut selesai dieksekusi atau dikeluarkan dari lingkup aslinya.```

#### 7. Jelaskan dengan contoh cara membuat return multiple value di Functions!
jawab  
- Menggunakan List atau Map:  
    Kita dapat menggunakan List atau Map untuk mengelompokkan nilai-nilai yang ingin kita kembalikan sebagai multiple values.  
    contoh dengan List
    ```dart
    List<int> getNumbers() {
    int a = 1;
    int b = 2;
    int c = 3;
    return [a, b, c];
    }

    void main() {
    List<int> numbers = getNumbers();
    print(numbers); // Output: [1, 2, 3]
    }
    ```
    Contoh dengan Map
    ```dart
    Map<String, int> getNumbers() {
    int a = 1;
    int b = 2;
    int c = 3;
    return {'a': a, 'b': b, 'c': c};
    }

    void main() {
    Map<String, int> numbers = getNumbers();
    print(numbers); // Output: {a: 1, b: 2, c: 3}
    }
    ``` 
- Menggunakan objek khusus  
    Kita juga dapat membuat objek khusus yang mengemas nilai-nilai yang ingin dikembalikan sebagai multiple values.

    contoh
    ```dart
    class Result {
  int sum;
  int difference;

  Result(this.sum, this.difference);
    }

    Result performCalculations(int a, int b) {
    int sum = a + b;
    int difference = a - b;
    return Result(sum, difference);
    }

    void main() {
  Result result = performCalculations(5, 3);
  print(result.sum); // Output: 8
  print(result.difference); // Output: 2
    }
    ```
    Dalam contoh di atas, kita membuat kelas Result yang memiliki properti sum dan difference. Fungsi performCalculations() melakukan perhitungan dan mengembalikan objek Result yang berisi nilai-nilai yang ingin dikembalikan sebagai multiple values.

#### 8. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!
###### Selesai
