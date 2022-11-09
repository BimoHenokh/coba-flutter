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