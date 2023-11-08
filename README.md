# Museum Collection Management Mobile

Nama : Erstevan Laurel Lucky Almeida<br>
NPM : 2206082493<br>
Kelas : PBP - E<br>

<hr>

## Tugas 7: Elemen Dasar Flutter
 - [x] **Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.**
 - [x] **Membuat tiga tombol sederhana dengan ikon dan teks untuk:**
    - [x] **Melihat daftar item (Lihat Item)**
    - [x] **Menambah item (Tambah Item)**
    - [x] **Logout (Logout)**
 - [x] **Memunculkan Snackbar dengan tulisan:**
    - [x] **"Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.**
    - [x] **"Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.**
    - [x] **"Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.**
- [x] **Menjawab beberapa pertanyaan berikut pada README.md pada root folder.**
    - [x] **Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?**
    > Statless widget merupakan widget yang dibangun dengan konfigurasi yang telah diinisiasi di awal. Stateless widget merupakan widget yang bersifat *static* atau tidak pernah berubah. Sedangkan, stateful widget merupakan widget yang dapat berubah secara dinamis.
    - [x] **Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.**
    > - **MaterialApp** (**main.dart**), digunakan untuk mengatur struktur dasar aplikasi.
    > - **Scaffold** (**menu.dart**), digunakan untuk membungkus tampilan halaman utama.
    > - **AppBar** (**menu.dart**), digunakan untuk mengatur bagian *header* pada halaman tersebut.
    > - **Container** (**menu.dart**), digunakan untuk mengatur bagian *body* pada halaman utama dan membungkus *widgets* lainnya.
    > - **SingleChildScrollView** (**menu.dart**), digunakan untuk memberikan efek atau fitur *scroll* jika data tidak terlalu banyak dan tidak muat untuk ditampilkan.
    > - **Padding** (**menu.dart**), digunakan untuk mengatur ruang kosong pada halaman.
    > - **Column** (**menu.dart**), digunakan untuk menampilkan data secara vertikal.
    > - **Text** (**menu.dart**), digunakan untuk memapilkan text.
    > - **GridView.count** (**menu.dart**), digunakan untuk menampilkan data atau item dalam bentuk grid.
    > - **InkWell** (**menu.dart**), digunakan untuk menampilkan respons ketika kartu ditekan.
    > - **Center** (**menu.dart**), digunakan untuk mengatur item supaya ditengah.
    > - **Icon** (**menu.dart**), digunakan untuk menampilkan icon.
    - [x] **Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)**
    > Hal yang pertama kali dilakukan adalah membuat program Flutter baru dengan menjalankan kode ```flutter create museum_collection``` yang akan membuat folder baru bernama museum_collection. Kemudian, pindah ke direktori / folder tersebut dengan ```cd museum_collection```. Lalu, untuk merapihkan pengerjaan proyek, saya membuat file baru bernama **menu.dart** dan melakukan *copy paste* class **MyHomePage** dari **main.dart** ke **menu.dart** serta *import package* yang diperlukan. <br> <br> Selanjutnya, mengganti sifat widget dari **StatefullWidget** menjadi **StatelessWidget**. Kemudian, membuatkan kelas **ShopItem** yang digunakan untuk menambkahkan item baru dan membuat item baru bernama "Lihat Item", "Tambah Item", dan "Logout". Selanjutnya, menambahkan kode-kode untuk menampilkan menu utama pada bagian Scaffold(...). Kemudian, membuat kelas baru bernama **ShopCard** untuk menampilkan data ShopItem yang disajikan dengan kartu. Terakhir, mengatur styling warna yang sesuai dengan aplikasi website agar selaras.
- [x] **Melakukan add-commit-push ke GitHub.**

