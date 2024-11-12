
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

### 5
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


## Tugas 8

### 1 
`const` digunakan di Flutter untuk mendeklare nilai yang tetap atau konstan pada saat compile. Nilai `const` harus diketahui pada saat compiledan tidak dapat diubah selama runtime. Penggunaan `const` pada kode Flutter memiliki beberapa keuntungan, antara lain:

1. **Performa yang lebih baik**: Karena nilai `const` diketahui pada saat kompilasi, Flutter dapat melakukan optimasi yang lebih baik dalam mengelola memori dan eksekusi kode. Ini dapat menghasilkan aplikasi yang lebih cepat dan lebih efisien.

2. **Menghindari kesalahan perubahan nilai**: Dengan menggunakan `const`, kita dapat memastikan bahwa nilai-nilai tersebut tidak akan berubah. Ini membantu mencegah kesalahan yang mungkin terjadi jika nilai tersebut diubah secara tidak sengaja.

3. **Meminimalkan penggunaan memori**: Karena nilai `const` hanya diinisialisasi sekali dan tidak berubah, Flutter dapat mengoptimalkan penggunaan memori dengan menyimpan nilai-nilai tersebut secara efisien.

Sebaiknya kita menggunakan `const` ketika nilai yang dideklarasikan memang tetap atau konstan sepanjang waktu, seperti angka atau string tetap. Contoh penggunaan `const` yang umum adalah saat mendefinisikan nilai-nilai konstan seperti warna, ikon, atau teks yang tidak berubah.

Namun, sebaiknya tidak menggunakan `const` ketika nilai yang dideklarasikan tidak tetap atau berubah seiring waktu. Jika nilai tersebut berubah, penggunaan `const` akan menyebabkan kesalahan pada saat kompilasi. Sebagai alternatif, kita dapat menggunakan `final` untuk mendeklarasikan nilai yang tetap pada saat runtime.

```dart
  // AppBar adalah bagian atas halaman yang menampilkan judul.
      appBar: AppBar(
       
        title: const Text(
          'Toko Emas 86',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
```

### 2
Column dan Row adalah dua jenis layout widget yang digunakan dalam Flutter untuk menyusun widget secara vertikal (Column) dan horizontal (Row). Perbedaan utama antara keduanya adalah arah susunan widget.

Column:
- Digunakan untuk menyusun widget secara vertikal, dari atas ke bawah.
- Widget anak ditempatkan secara berurutan dari atas ke bawah.
- Lebar widget mengikuti lebar widget terlebar di antara widget anak.
- Tinggi widget dapat disesuaikan sesuai dengan kebutuhan.

Contoh implementasi Column:
```dart
child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Input field for Name
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Name",
                      labelText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
```

Row:
- Digunakan untuk menyusun widget secara horizontal, dari kiri ke kanan.
- Widget anak ditempatkan secara berurutan dari kiri ke kanan.
- Tinggi widget mengikuti tinggi widget tertinggi di antara widget anak.
- Lebar widget dapat disesuaikan sesuai dengan kebutuhan.

Contoh implementasi Row:
```dart
Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),
```

menggunakan Column atau Row tergantung pada tata letak yang kita inginkan. Jika kita ingin menyusun widget secara vertikal, kita dapat menggunakan Column. Jika kita ingin menyusun widget secara horizontal, kita dapat menggunakan Row.

### 3 
pada halaman `goldentry_form` saya menggunakan:
- TextFormField: Digunakan untuk memasukkan teks pada beberapa bidang, yaitu:
- Name: Menyimpan nama produk.
- Price: Menyimpan harga produk (dengan validasi agar hanya angka yang dapat dimasukkan).
- Weight: Menyimpan berat produk (dengan validasi angka).
- Description: Menyimpan deskripsi produk.
- Amount: Menyimpan jumlah produk (dengan validasi angka).
- ElevatedButton: Digunakan untuk tombol “Save” yang memvalidasi form dan menampilkan dialog jika data berhasil disimpan.
 
dan beberapa fitur yang tidak saya pakai seperti karena belum saya butuhkan untuk tugas kali ini :
DropdownButton
Checkbox atau Switch
DatePicker
Slider


### 4 

Pengaturan tema pada dilakukan di `main.dart` dengan menggunakan properti theme di dalam MaterialApp, yang memungkinkan kita untuk mendefinisikan gaya dan warna UI secara konsisten di seluruh aplikasi. tema aplikasi sudah diimplementasikan melalui ThemeData, yang menentukan warna utama menggunakan `primarySwatch: Colors.red di ColorScheme.fromSwatch, serta warna aksen sekunder dengan copyWith(secondary: Colors.red.shade400)`. Dengan pengaturan ini, warna-warna utama aplikasi, seperti toolbar dan status bar, akan otomatis mengambil warna merah, sementara elemen aksen menggunakan warna merah yang lebih terang, memberikan konsistensi pada tampilan aplikasi. Selain itu, properti `useMaterial3: true ` digunakan untuk memanfaatkan gaya design yang memberikan tampilan UI yang lebih modern.


### 5 
Saya mengelola navigasi halaman menggunakan widget Navigator. Saya menggunakan fungsi seperti Navigator.push() untuk menambahkan halaman baru ke stack, dan Navigator.pop() untuk kembali ke halaman sebelumnya. Selain itu, saat mau mengganti halaman yang sedang ditampilkan tanpa menambahkannya ke stack, saya menggunakan Navigator.pushReplacement(). Untuk memudahkan navigasi bagi pengguna, saya menambahkan sebuah drawer, sehingga mereka bisa berpindah antara halaman utama dan halaman form dengan lebih mudah. Pada halaman utama, tombol navigasi juga diimplementasikan dengan Navigator, sehingga ketika ditekan, pengguna akan diarahkan ke halaman form













