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
    > Stateless widget merupakan widget yang dibangun dengan konfigurasi yang telah diinisiasi di awal. Stateless widget merupakan widget yang bersifat *static* atau tidak pernah berubah. Sedangkan, stateful widget merupakan widget yang dapat berubah secara dinamis.
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

### Bonus
- [ ] **Kamu akan mendapatkan nilai bonus pada penilaian tugas ini apabila kamu mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Item, Tambah Item, dan Logout).**

<hr>

## Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements
- [x] **Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:**
    - [x] **Memakai minimal tiga elemen input, yaitu ```name```, ```amount```, ```description``` Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.**
    - [x] **Memiliki sebuah tombol ```Save```.**
    - [x] **Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:**
        - [x] **Setiap elemen input tidak boleh kosong.**
        - [x] **Setiap elemen input harus berisi data dengan tipe data atribut modelnya.**
- [x] **Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol ```Tambah Item``` pada halaman utama.**
- [x] **Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah ```pop-up``` setelah menekan tombol ```Save``` pada halaman formulir tambah item baru.**
- [x] **Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:**
    - [x] **Drawer minimal memiliki dua buah opsi, yaitu ```Halaman Utama``` dan ```Tambah Item```.**
    - [x] **Ketika memiih opsi ```Halaman Utama```, maka aplikasi akan mengarahkan pengguna ke halaman utama.**
    - [x] **Ketika memiih opsi (```Tambah Item```), maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.**
- [x] **Menjawab beberapa pertanyaan berikut pada ```README.md``` pada root folder (silakan modifikasi ```README.md``` yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).**
    - [x] **Jelaskan perbedaan antara ```Navigator.push()``` dan ```Navigator.pushReplacement()```, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!**
        > Perbedaan antara ```push()``` dan ```pushReplacement()``` terletak pada apa yang dilakukan setelah memanggil salah satu method tersebut. Method ```push()``` akan menambahkan route baru di stack. Sedangkan, method ```pushReplacement()``` akan menggantikan route tersebut dengan route baru.
        > Penggunaan ```push()``` akan lebih baik jika akan melakukan routing ke halaman selanjutnya. Sedangkan, ```pushReplacement()``` akan digunakan jika akan melakukan routing ke halaman baru yang tidak memerlukan pengguna untuk kembali ke halaman sebelumnya.
    - [x] **Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!**
        > **Container**, digunakan untuk mengatur dan mengelompokkan *widget* pada suatu wadah.
        > **Align**, digunakan untuk memposisikan widget pada *certain* area.
        > **Column**, digunakan untuk menempatkan widget secara vertikal.
        > **ListView**, digunakan untuk menampilkan data dalam bentuk list.
        > **Padding**, digunakan untuk memberikan jarak untuk setiap widgetnya.
    - [x] **Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!**
        > Pada tugas ini, saya menggunakan sebanyak 5 elemen input, yakni ```name```, ```type```, ```year```, ```amount```, dan ```description```. Pertama, ```name``` digunakan untuk mengidentifikasi nama dari setiap koleksi yang ada. Kedua, ```type``` digunakan untuk mengumpulkan dan membedakan jenis dari masing-masing koleksi yang tersedia. Ketiga, ```year``` diperlukan untuk pengunjung halaman dapat mengetahui tahun berapa koleksi ini pertama kali ditemukan. Keempat, ```amount``` digunakan untuk menentukan berapa banyak jumlah koleksi yang ditemukan. Kelima, ```description``` diperlukan untuk memberikan deskripsi terhadap koleksi tersebut secara kebih mendalam.
    - [x] **Bagaimana penerapan clean architecture pada aplikasi Flutter?**
        > *Clean architecture* merupakan salah satu pendekatan pengembangan perangkat lunak yang akan membagi-bagi kode ke dalam beberapa lapisan. Dalam konteks Flutter, lapisan tersebut biasanya terdiri dari:
        > - **Lapisan UI**, lapisan ini berisi komponen-komponen *user interface* yang bertanggung jawab dalam interaksi dengan pengguna.
        > - **Lapisan Domain** (**Bussiness Logic**), lapisan ini akan diisi dengan logika bisnis inti dari sebuah aplikasi. 
        > - **Lapisan Data**, lapisan ini akan berfungsi sebagai *database* yang bertanggung jawab dalam pengembalian dan penyimpanan data.
    - [x] **Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)**
        > Hal pertama yang dilakukan adalah membuat sebuah halaman form sederhana **collection_form.dart**. Form tersebut digunakan untuk menambahkan koleksi ke dalam *database* aplikasi. Kemudian, saya membuat 5 elemen input (seperti yang sudah dijelaskan di atas) yang mewajibkan pengguna mengisi elemen tersebut dan kategori input harus sesuai jika ingin memasukkan koleksi baru. Selanjutnya, saya membuat tombol **Save** yang berguna untuk memasukkan data dari elemen-elemen tersebut ke dalam *database*. Setelah itu, saya membuat semacam *AlertDialog* yang berfungsi untuk memunculkan data yang telah dimasukkan pada formulir setelah menekan tombol **Save**.Lalu, menerapkan *routing* pada tombol **Tambah Koleksi** yang ada pada halaman utama ke halaman yang digunakan untuk mengisi formulir.
        > Selanjutnya, saya membuat sebuah *drawer* pada file baru **left_drawer.dart**. Kemudian, pada *drawer* tersebut saya membuat dua item untuk mengembalikan layar pengguna ke halaman utama dan satu lagi untuk mengarahkan pengguna ke layar pengisian formulir. Setelah itu, saya melakukan *routing* pada masing-masing tombol. Tombol pertama (**Halaman Utama**) saya menggunakan ```pushReplacement()``` agar pengguna tidak bisa kembali ke halaman sebelumnya. Sedangkan, pada tombol kedua (**Pengisian Form**) saya menggunakan ```push()``` agar pengguna dapat kembali ke halaman utama jika tidak jadi untuk mengisi formulir.
- [x] **Melakukan ```add```-```commit```-```push``` ke GitHub.**

### Bonus

- [ ] **Membuat sebuah halaman baru, yaitu halaman daftar item yang sudah dibuat dengan isi halamannya adalah setiap data produk yang sudah pernah dibuat.**
    > Kamu dapat memanfaatkan objek model untuk mengerjakan fitur ini.
- [ ] **Mengarahkan pengguna ke halaman tersebut jika menekan tombol Lihat Produk pada halaman utama atau drawer.**