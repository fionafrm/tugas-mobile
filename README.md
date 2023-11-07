# TUGAS 7
### Fiona Ratu Maheswari
### 2206024575

**Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?**
Stateless Widget adalah widget statis yang tidak akan berubah. Widget ini biasanya digunakan untuk tampilan saja seperti button, item, box container, dan lain-lain. Stateless Widget cocok digunakan ketika kita hanya perlu menampilkan data yang sifatnya statis atau tidak perlu adanya perubahan nilai. Sedangkan Stateful Widget adalah widget dinamis yang dapat berubah. Widget ini digunakan ketika kita ingin membuat widget yang memiliki data atau komponen yang berubah-ubah. Stateful Widget dapat mengubah atau mengupdate tampilan, menambah widget lainnya, mengubah nilai variabel, icon, warna dan lain-lain. Stateful Widget dapat mengubah dirinya kapanpun dibutuhkan berdasarkan action dari pengguna atau bahkan ketika terjadi perubahan data dari sisi database.

**Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.**
1. MaterialApp: Digunakan untuk mengatur tema dan konfigurasi aplikasi.
2. Scaffold: Digunakan untuk membuat tata letak dasar aplikasi, seperti AppBar, body, dan lain-lain.
3. AppBar: Digunakan untuk membuat AppBar di bagian atas aplikasi.
4. SingleChildScrollView: Digunakan untuk membuat tata letak yang bisa scroll secara vertikal.
5. Padding: Digunakan untuk menambahkan padding di sekitar widget yang ada di dalamnya.
6. Column: Digunakan untuk menampilkan widget-widget secara vertikal.
7. Text: Digunakan untuk menampilkan teks.
8. GridView.count: Digunakan untuk membuat tata letak grid dengan jumlah kolom yang ditentukan.
9. Container: Digunakan untuk mengatur tata letak dan dekorasi widget lain di dalamnya.
10. Center: Digunakan untuk mengatur widget di tengah-tengah.
11. Icon: Digunakan untuk menampilkan ikon.
12. InkWell: Digunakan untuk membuat area yang responsif terhadap sentuhan.
13. SnackBar: Digunakan untuk menampilkan pesan sementara di bagian bawah aplikasi.

**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)**
1. Membuat direktori baru untuk proyek tugas flutter
2. Melakukan initiate project flutter bernama teyvat_item_tracker_mobile dengan menjalankan perintah flutter create teyvat_item_tracker_mobile
3. Menghubungkan repositori baru dengan direktori lokal project flutter
4. Membuat menu.dart pada folder lib dan memindahkan class MyHomePage ke menu.dart
5. Lalu impor menu.dart ke main.dart
6. Mengganti MyHomePage menjadi stateless widget
7. Membuat class Item beserta attribute nya
8. Membuat class ShopCard lalu mengatur widget yang ada pada bagian ShopCard
9. Memodifikasi widget yang ada pada MyHomePage
10. Mengganti warna beberapa bagian seperti warna Icon dan Text