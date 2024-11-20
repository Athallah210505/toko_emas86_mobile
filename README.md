
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


##  Tugas 9

### 1

Membuat model untuk pengambilan atau pengiriman data JSON sangatlah penting karena ada beberapa alasan. Pertama, dengan menggunakan model kita dapat memastikan bahwa struktur data yang diterima atau dikirim konsisten, sehingga menghindari kesalahan parsing. Kedua, model dapat memvalidasi data yang diterima atau dikirim, memastikan data tersebut sesuai dengan format yang diharapkan dan menghindari kesalahan runtime. Ketiga, model juga memudahkan akses data dengan menyediakan properti dan metode yang terstruktur, sehingga kita tidak perlu mengurai JSON secara manual. Terakhir, model membuat kode lebih mudah dibaca dan dipelihara, karena kita dapat dengan mudah melihat struktur data yang diharapkan dan bagaimana data tersebut digunakan dalam aplikasi. Jika kita tidak membuat model terlebih dahulu, ada beberapa error yang mungkin terjadi adalah kesalahan parsing, kesalahan akses data, dan kurangnya validasi, yang semuanya dapat menyebabkan kesalahan runtime atau data yang tidak valid.

### 2
Fungsi library http yang diimplementasikan pada tugas ini berfungsi untuk melakukan permintaan HTTP (HTTP requests) seperti GET, POST, PUT, dan DELETE  `(CRUD)` ke server. Dengan menggunakan library ini, aplikasi dapat berkomunikasi dengan server untuk mengambil data (misalnya, JSON) atau mengirim data ke server. Library ini menyediakan cara yang mudah dan efisien untuk menangani permintaan HTTP dan mengelola respons yang diterima dari server.


### 3
CookieRequest adalah sebuah kelas yang digunakan untuk menangani permintaan HTTP yang memerlukan penyimpanan dan pengelolaan cookie. Cookie sering digunakan untuk mempertahankan sesi pengguna, sehingga server dapat mengenali permintaan yang datang dari pengguna yang sama.

Fungsi :
- Mengirim Permintaan HTTP: CookieRequest dapat digunakan untuk mengirim permintaan HTTP seperti GET, POST, PUT, dan DELETE.
- Menyimpan dan Mengelola Cookie: CookieRequest menyimpan cookie yang diterima dari server dan mengirimkannya kembali pada permintaan berikutnya, memungkinkan server untuk mengenali sesi pengguna.
- Autentikasi dan Otorisasi: Dengan menyimpan cookie, CookieRequest membantu dalam proses autentikasi dan otorisasi, memastikan bahwa hanya pengguna yang sah yang dapat mengakses sumber daya tertentu.

Ada beberapa alasan mengapa kita harus instantiate `CookieRequest` perlu dibagikan ke komponen-komponen pada flutter

- Konsistensi Sesi: Dengan membagikan instance CookieRequest, semua komponen di aplikasi dapat berbagi sesi yang sama, memastikan bahwa pengguna tetap terautentikasi saat berpindah antar halaman.
- Pengelolaan State yang Mudah: Membagikan instance CookieRequest memungkinkan pengelolaan state yang lebih mudah, karena semua komponen dapat mengakses dan memperbarui state yang sama.
- Keamanan: Dengan menggunakan satu instance CookieRequest, kita dapat memastikan bahwa cookie dan informasi sesi lainnya dikelola dengan aman dan konsisten di seluruh aplikasi.


### 4
1. Input data : Menagmmbil data dari server
2. Pengambilan data dari server: Melakukanya dengan menggunakan `fetchProduct` digunakan untuk emngambil data produk dari server menggunakan `CookieRequest`


```dart
Future<List<ProductEntry>> fetchProducts(CookieRequest request) async {
  final response = await request.get('http://127.0.0.1:8000/json/');
  
  List<ProductEntry> productList = [];
  for (var d in response) {
    if (d != null) {
      productList.add(ProductEntry.fromJson(d));
    }
  }
  return productList;
}
```

3. Pengolahan Data di Aplikasi: Data yang diterima dari server diurai (parsed) menjadi objek ProductEntry menggunakan metode fromJson.


```dart
productList.add(ProductEntry.fromJson(d));
```
4. Menampilkan data dengan yang sudah difetch dan ditampilkan pada widget flutter

```dart

class _ProductEntryPageState extends State<ProductEntryPage> {
  Future<List<ProductEntry>> fetchProducts(CookieRequest request) async {
    // Replace with your backend URL
    final response = await request.get('http://127.0.0.1:8000/json/');

    List<ProductEntry> productList = [];
    for (var d in response) {
      if (d != null) {
        productList.add(ProductEntry.fromJson(d));
      }
    }
    return productList;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProducts(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error fetching data.'));
          } else if (!snapshot.hasData || snapshot.data.isEmpty) {
            return const Center(
              child: Text(
                'No products available.',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(
                        product: snapshot.data[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        snapshot.data[index].fields.goldName,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text("Price: \$${snapshot.data[index].fields.price}"),
                      const SizedBox(height: 8),
                      Text("Quantity: ${snapshot.data[index].fields.quantity}"),
                      const SizedBox(height: 8),
                      Text("Description: ${snapshot.data[index].fields.description}"),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
```


### 5
#### Regis
1. Input Data Akun: Pengguna memasukkan data akun (misalnya, username, email, password) melalui form di Flutter.

2. Mengirim Data ke Server: Data yang dimasukkan dikirim ke endpoint registrasi di server Django menggunakan HTTP POST request.

```dart 
final response = await http.post(
  Uri.parse('http://127.0.0.1:8000/register/'),
  headers: <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  },
  body: jsonEncode(<String, String>{
    'username': username,
    'email': email,
    'password': password,
  }),
);
```
3. Pengolahan Data di Server: Django menerima data, memvalidasi, dan membuat akun baru di database. Jika berhasil, Django mengirimkan respons sukses.

4. Penerimaan Respons di Flutter: Flutter menerima respons dari server dan menampilkan pesan sukses atau error kepada pengguna.

##### Login
1. Input Data Akun: Pengguna memasukkan username dan password melalui form di Flutter.

2. Pengiriman Data ke Server: Data login dikirim ke endpoint login di server Django menggunakan HTTP POST request.
```dart
final response = await http.post(
  Uri.parse('http://127.0.0.1:8000/login/'),
  headers: <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  },
  body: jsonEncode(<String, String>{
    'username': username,
    'password': password,
  }),
);
```
3. Pengolahan data: Django memverifikasi kredensial pengguna. Jika valid, Django membuat sesi dan mengirimkan cookie sesi dalam respons.
4. Penerimaan Respons di Flutter: Flutter menerima respons dari server dan menyimpan cookie sesi menggunakan CookieRequest.

```dart
if (response.statusCode == 200) {
  // Save cookies and navigate to the main menu
} else {
  // Show error message
}
```

5. Navigasi ke Menu Utama: Jika login berhasil, Flutter menavigasi pengguna ke menu utama.


#### logout
1. Pengiriman Permintaan Logout: Pengguna menekan tombol logout, dan Flutter mengirimkan permintaan logout ke server Django menggunakan HTTP GET atau POST request.

```dart
final response = await http.post(
  Uri.parse('http://127.0.0.1:8000/logout/'),
  headers: <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  },
);
```

2. Melakukan pengolahan Data di Server: Django menghapus sesi pengguna dan mengirimkan respons sukses.

3. Penerimaan Respons di Flutter: Flutter menerima respons dari server dan menghapus cookie sesi.

```dart

if (response.statusCode == 200) {
  // Clear cookies and navigate to the login page
} else {
  // Show error message
}
```
4. Navigasi ke Halaman Login: Flutter menavigasi pengguna kembali ke halaman login.


### 6

1. saya membuat `django-app-authentication` pad projek django saya
2. lalu saya menambahkan depedencies yang diperlukan juga pada projek django saya
seperti allowed host dan 

```python
CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SAMESITE = 'None'
```
pada setting saya

3. saya menambahkan beberapa halpada views.py/autehntication saya mulai dari login,register,logout, dan juga menambahkan urls.py pada folder tersebut agar bisa melakukan routing yang sesuai

4. lalu saya melakukan integrasi sistem Autentikasi pada flutter dengan menginstall `flutter pub add provider & flutter pub add pbp_django_auth`

lalu saya merubah mian dart saya juga menjadi 
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Toko Emas 86',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepOrange,
          ).copyWith(secondary: Colors.deepOrange[200]),
        ),
        home: const LoginPage()
      ),
    );
  }
}
```
dan juga saya melakukan import 
```dart
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
```
5. saya juga membuat beberapa file tambahan seperti Login.dart dan register.dart untuk user

6. selanjutnya saya melakukan fetch data dari projek django saya dengan menambahkan user .permisiion pada androidmaifest.xml saya

7. saya juuga membuat list_productentry dimana didalamnya akan mencetak isi dri produk yang ada yang sudah terintegrasi dengan user 
```dart
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:toko_emas86_mobile/models/product_entry.dart';
import 'package:toko_emas86_mobile/widgets/left_drawer.dart';
import 'product_detail_page.dart'; // Import the detail page

class ProductEntryPage extends StatefulWidget {
  const ProductEntryPage({super.key});

  @override
  State<ProductEntryPage> createState() => _ProductEntryPageState();
}

class _ProductEntryPageState extends State<ProductEntryPage> {
  Future<List<ProductEntry>> fetchProducts(CookieRequest request) async {
    // Replace with your backend URL
    final response = await request.get('http://127.0.0.1:8000/json/');

    List<ProductEntry> productList = [];
    for (var d in response) {
      if (d != null) {
        productList.add(ProductEntry.fromJson(d));
      }
    }
    return productList;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProducts(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error fetching data.'));
          } else if (!snapshot.hasData || snapshot.data.isEmpty) {
            return const Center(
              child: Text(
                'No products available.',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(
                        product: snapshot.data[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        snapshot.data[index].fields.goldName,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text("Price: \$${snapshot.data[index].fields.price}"),
                      const SizedBox(height: 8),
                      Text("Quantity: ${snapshot.data[index].fields.quantity}"),
                      const SizedBox(height: 8),
                      Text("Description: ${snapshot.data[index].fields.description}"),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
```
8. saya juga membuat sebuah function yang dimana akan mengintegrasikan fluuter saya dan django say jika saya ingin menambahkan produk

9. lalu saya mengintegrasikan fitur logout

10. saya juga membuat page yang dimana jika salah satu produk di click maka akan ke route ke product_detail_page yang akan memunculkan detail yang ada pada produk tersebut dan didalamnya juga memiliki tomnbol back

