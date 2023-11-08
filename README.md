# Museum Collection Management Mobile

Nama : Erstevan Laurel Lucky Almeida<br>
NPM : 2206082493<br>
Kelas : PBP - E<br>

<hr>

## Tugas 7: Elemen Dasar Flutter
 - [x] Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.
 - [x] Membuat tiga tombol sederhana dengan ikon dan teks untuk:
    - [x] Melihat daftar item (Lihat Item)
    - [x] Menambah item (Tambah Item)
    - [x] Logout (Logout)
 - [x] Memunculkan Snackbar dengan tulisan:
    - [x] "Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.
    - [x] "Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.
    - [x] "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
- [x] Menjawab beberapa pertanyaan berikut pada README.md pada root folder.
    - [x] Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
    : Statless widget merupakan widget yang dibangun dengan konfigurasi yang telah diinisiasi di awal. Stateless widget merupakan widget yang bersifat *static* atau tidak pernah berubah. Sedangkan, stateful widget merupakan widget yang dapat berubah secara dinamis.
    - [x] Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
        - ...
    - [x] Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
    : Hal yang pertama kali dilakukan adalah membuat program Flutter baru dengan menjalankan kode ```flutter create museum_collection``` yang akan membuat folder baru bernama museum_collection. Kemudian, pindah ke direktori / folder tersebut dengan ```cd museum_collection```. Lalu, untuk merapihkan pengerjaan proyek, saya membuat file baru bernama **menu.dart** dan melakukan *copy paste* class **MyHomePage** dari **main.dart** ke **menu.dart** serta *import package* yang diperlukan. <br>
    Selanjutnya, mengganti sifat widget dari **StatefullWidget** menjadi **StatelessWidget**. Kemudian, membuatkan kelas **ShopItem** yang digunakan untuk menambkahkan item baru dan membuat item baru bernama "Lihat Item", "Tambah Item", dan "Logout". Selanjutnya, menambahkan kode-kode untuk menampilkan menu utama pada bagian Scaffold(...). Terakhir, membuat kelas baru bernama **ShopCard** untuk menampilkan data ShopItem yang disajikan dengan kartu.
- [x] Melakukan add-commit-push ke GitHub.

