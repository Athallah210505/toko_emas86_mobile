
## TUGAS 7

### 1

Stateless widget adalah jenis widget di Flutter yang tidak memiliki state atau keadaan internal. Artinya, widget ini tidak dapat berubah atau berinteraksi dengan data yang berubah seiring waktu atau dapat dibilang dinamis. Stateless widget hanya bergantung pada input yang diberikan saat dibuat dan tidak memiliki kemampuan untuk memperbarui tampilan secara dinamis.

Di sisi lain, stateful widget adalah jenis widget di Flutter yang memiliki state atau keadaan internal. Widget ini dapat berubah atau berinteraksi dengan data yang berubah seiring waktu. Stateful widget dapat memperbarui tampilan secara dinamis berdasarkan perubahan state-nya.

Perbedaan utama antara stateless widget dan stateful widget adalah bahwa stateless widget tidak dapat memperbarui tampilan secara dinamis, sedangkan stateful widget dapat melakukannya. Stateful widget juga memungkinkan penggunaan fungsi setState() untuk memperbarui state dan membangun ulang tampilan widget.

### 2

**MaterialApp** Root aplikasi dengan tema global dan halaman utama (home).

**Scaffold**: Struktur dasar halaman dengan AppBar dan body.

**AppBar**: Header halaman dengan judul aplikasi.

**Padding**: Menambahkan jarak di sekitar widget.

**Column & Row**: Menyusun widget secara vertikal dan horizontal.

**Text**: Menampilkan teks (judul, nama, info).

**GridView.count**: Grid dengan jumlah kolom tetap, untuk daftar ItemCard.

**Card**: Membungkus konten dalam kotak dengan sudut melengkung.

**Container**: Kontainer fleksibel untuk mengatur ukuran, padding, dll.

**Icon**: Menampilkan ikon material pada ItemCard.

**InkWell**: Efek klik dengan animasi "splash".

**SnackBar**: Menampilkan pesan sementara di bawah layar.

**Center & SizedBox**: Penempatan di tengah dan memberi jarak antar-widget.


### 3
`setState()` adalah sebuah fungsi yang digunakan dalam Flutter untuk memperbarui state dari sebuah stateful widget. Ketika `setState()` dipanggil, Flutter akan memanggil ulang metode `build()` dari widget tersebut, sehingga tampilan widget dapat diperbarui sesuai dengan perubahan state.

Variabel yang dapat terdampak oleh `setState()` adalah variabel yang digunakan dalam membangun tampilan widget. Ketika nilai dari variabel-variabel tersebut berubah, pemanggilan `setState()` akan memicu pembaruan tampilan widget.


### 4
Perbedaan antara `const` dan `final` adalah sebagai berikut:

- `const` digunakan untuk mendeklarasikan nilai yang tetap atau konstan pada saat kompilasi. Nilai `const` harus diketahui pada saat kompilasi dan tidak dapat diubah selama runtime. `const` digunakan untuk nilai-nilai yang tidak berubah sepanjang waktu, seperti angka atau string tetap.
- `final` digunakan untuk mendeklarasikan nilai yang tetap atau konstan pada saat runtime. Nilai `final` dapat diinisialisasi hanya sekali dan tidak dapat diubah setelahnya. `final` digunakan untuk nilai-nilai yang tetap selama runtime, seperti objek yang diinisialisasi pada saat runtime.

Dengan menggunakan `const` dan `final`, kita dapat memastikan bahwa nilai-nilai tersebut tidak akan berubah, sehingga membantu dalam mengoptimalkan performa dan meminimalkan kesalahan pada program.

## 5
- Pertama saya Saya membuat proyek baru dengan menggunala `flutter create <APP_NAME>`
- kemudian saya menambahkan file bernama `main.dart` untuk membuat widget dan juga mengganti warna warna
- Saya mengubah **Mengubah Tema Warna Aplikasi** dengan `    colorScheme: ColorScheme.fromSwatch(
       primarySwatch: Colors.red,
        ).copyWith(secondary: Colors.red.shade400),
        useMaterial3: true,
      ),
      `
- Lalu **Membuat Card Sederhana yang Berisi NPM, Nama, dan Kelas**
- Lalu **Membuat Button Card Sederhana dengan Icon**
- Lalu **Mengintegrasikan InfoCard dan ItemCard untuk Ditampilkan di MyHomePage**









