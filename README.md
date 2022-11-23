# coba_flutters

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


Tugas 7
1.  Stateful Widget bisa berubah (dinamik) jika user berinteraksi dengannya seperti button, textfield, checkbox, dll. Sedangkan stateless widget tidak bisa berubah (statik) jika user berinteraksi dengannya.

2.  Align mengatur posisi widget lainnya.  
    AppBar amenampilkan judul aplikasi.
    Center digunakan untuk mengatur posisi widget lainnya ke tengah.
    Column digunakan untuk menampilkan widget-widget secara vertikal.
    Color digunakan untuk menampilkan warna.
    EdgeInsets mengatur padding setiap sisi dari widget
    FloatingActionButton adalah tombol yang biasanya digunakan untuk menambahkan data.
    FloatingActionButtonLocation adalah lokasi dari FloatingActionButton.
    Icon digunakan untuk menampilkan icon.
    MainAxisAlignment mengatur posisi widget secara horizontal.
    Padding digunakan untuk menambahkan jarak pada widget lainnya.
    Scaffold digunakan untuk membuat tampilan dasar dari aplikasi.
    Stack digunakan untuk menumpuk widget lainnya.
    Text digunakan untuk menampilkan teks.
    TextStyle mengatur gaya dari teks.
    Theme adalah tema dari aplikasi.
    Visibility mengatur apakah widget visible atau invisible.

3.  setState adalah sebuah method yang digunakan untuk mengubah state dari sebuah widget. setState akan memanggil method build() untuk mengupdate tampilan widget. Hanya stateful widget yang terpengaruh setState .

 4. 
    1.  Tombol plus sudah tersedia ketika app dibuat, tetapi itu hanya 1    tombol. Untuk menambah tombol minus, Perlu list widget yang berisi tombol plus dan minus. Maka digunakan widget stack lalu dimasukkan widget tombol plus dan minus tersebut dengan alignment ujung kanan bawah untuk tombol plus dan alignment ujung kiri bawah untuk tombol minus.
    2.  Ketika tombol plus dipencet maka function _incrementCounter akan menambah nilai counter sebanyak 1. Jika tombol negatif dipencet maka function _decreamentCounter akan mengurangi counter sebanyak 1. Nilai minimal yang bisa dikurangi adalah 0.
    3.  Kata ganjil/genap akan muncul sesuai dari nilai counter. jika counter bernilai genap maka kata genap dengan warna merah yang muncul, jika counter bernilai ganjil maka kata ganjil dengan warna biru yang muncul. Fungsi changeGanjilGenapColor mengubah warna tulisan ganjil/genap sesuai dengan nilai counter.

Tugas 8
1.  navigator.push mengganti halaman dengan mem-push halaman baru diatas halaman lama
    navigator.pushReplacement mengganti halaman dengan membuang semua halaman lama yang ada di atasnya lalu mem-push halaman baru yang diinginkan.

2.  (widget tugas sebelumnya)
    DateTime digunakan untuk mengambil tanggal dan waktu saat ini.
    DropdownButton digunakan untuk membuat dropdown button.
    Form digunakan untuk membuat form.
    ListTile digunakan untuk menampilkan list yang dapat di klik.
    MaterialPageRoute digunakan untuk membuat route baru.
    Navigator digunakan untuk pindah halaman
    SingleChildScrollView digunakan untuk membuat scrollable widget.
    OutlineInputBorder digunakan untuk membuat border pada textfield.
    TextButton digunakan untuk membuat button.
    TextFormField digunakan untuk membuat textfield.
    TextInputType digunakan untuk menentukan tipe keyboard numerik yang akan muncul.

3.  onClick, onClose, onError, onShow, renotify, requireInteraction
https://api.flutter.dev/flutter/dart-html/Notification-class.html

4.  Navigator menampilkan halaman sebagai stack yang berisi semua halaman yang pernah dibuka. Untuk menavigasi ke halaman baru, Navigator diakses lewat route BuildContext dan memanggil method seperti push() dan pop()

5.  1.  Mebuat file drawer.dart dan memasukkan widget drawer beserta isinya
    2.  Pada widget drawer, dinavigasikan menggunakan fungsi pushReplacement, MyHomePage untuk routing widget home, MyFormPage untuk routing widget form, dan MyBudgetData untuk routing tampilan data form yang sudah diinput.
    3.  Mebuat halaman form dengan file bernama form.dart. Menggunakan TextFormField untuk menginput nama, harga, dan tanggal, serta menggunakan DropdownButton untuk menginput kategori. Lalu menggunakan TextButton untuk menginput data ke database di model.dart
    4.  Membuat halaman tampilan data yang sudah diinput dengan file bernama budget_data.dart. Membuat widget listview untuk menampilkan data yang sudah diinput. Lalu menggunakan ListTile untuk menampilkan data yang sudah diinput.

Tugas 9
1.  Bisa, melakukan pengambilan data tanpa membuat model cocok dilakukan untuk coba coba. Masalahnya jika data semakin besar maka tanpa model akan sulit untuk mengelola data tersebut.
https://docs.flutter.dev/development/data-and-backend/json

2.  (Widget dari tugas sebelumnya)
    AsyncSnapshot adalah hasil dari sebuah proses asynchronous.
    CircularProgressIndicator adalah widget yang digunakan untuk menampilkan loading.
    FontWeight mengatur ketebalan teks.
    FutureBuilder adalah widget yang digunakan untuk menampilkan data yang diambil dari API.
    ListView adalah widget yang digunakan untuk menampilkan list.
    SizedBox digunakan untuk menentukan ukuran widget.

3.  1.  app melakukan http request get terhadap uri dari json yang diinginkan
    2.  response json yang diberikan oleh web di decode menggunakan jsonDecode 
    3.  response json yang sudah di decode dikonversi menjadi objek model yang diinginkan untuk disimpan
    4.  data dari model tersebut lalu ditampilkan di widget sesuai yang diinginkan

4.  1.  meng-import package:coba_flutters/page/drawer.dart lalu pada Widget build untuk halaman mywatchlist ditambahkan drawer sesuai dengan method drawer yang sudah diimport
    2.  dibuat folder model didalamnya ada file mywatchlist_model.dart yang berisi model untuk mywatchlist
    3.  data di fetch dari uri https://tugas2-bimo-h.herokuapp.com/mywatchlist/json/, didecode lalu diubah dalam model MywatchlistData dan disimpan pada list listMywatchlistData. Untuk menampilkan data menggunakan widger FutureBuilder karena asyncronous
        1.  setiap list yang ditap akan memanggil Navigator.push untuk menavigasi ke halaman detail mywatchlist
        2.  pada halaman detail mywatchlist di file detail_mywatchlist_page.dart akan menampilkan data yang sudah di fetch dari uri https://tugas2-bimo-h.herokuapp.com/mywatchlist/json/ dengan juul yang sama dengan yang dipilih
        3.  tombol dibuat menggunakan listtile ketika dipencet akan mempop halaman detail mywatchlist
        4.  
    