# TUGAS 9
### Fiona Ratu Maheswari
### 2206024575

**Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?**
Pengambilan data JSON tanpa membuat model terlebih dahulu dapat dilakukan, nantinya data masih dalam wujud jsonDecode `var data = jsonDecode(utf8.decode(response.bodyBytes));`. Namun, hal ini tidak lebih baik dibanding membuat model terlebih dahulu sebelum pengambilan data JSON karena data tidak langsung diinisiasi menjadi suatu object sesuai class modelnya.

**Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**
MyWatchlistPage: Membuat halaman utama dari watchlist
SingleWatchlistPage: Membuat halaman detail dari suatu watchlist
FutureBuilder: Merupakan widget yang digunakan untuk melakukan proses asinkron
Checkbox: Menampilkan Checkbox yang bisa diklik
MaterialPageRoute: Mengarahkan routing ke halaman (widget) tertentu
Drawer: Membuat drawer navigator
ListTile: Membuat list beberapa tile
Scaffold	Mengatur layout dari widget yang ada di dalamnya
AppBar	Menambahkan bar aplikasi yang berisi title dengan align left
Text	Berisi sebuah Text dengan properti di dalamnya
Center	Mengatur layout widget di dalamnya agar centered
Column	Mengatur layout widget di dalamnya agar turun ke bawah (tidak inline-flex)
TextStyle	Mengatur style dari sebuah text
Container	Menampung beberapa widget di dalamnya

**Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.**

**Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**

**Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.**

**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).**


# TUGAS 8
### Fiona Ratu Maheswari
### 2206024575

**Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!**
`Navigator.push` : Method ini menyebabkan route yang ditambahkan berada pada paling atas stack, sehingga route yang baru saja ditambahkan tersebut akan muncul dan ditampilkan kepada pengguna. Contoh:
```
...
    if (item.name == "Tambah Item") {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ShopFormPage()));
    }
...
```

`Navigator.pushReplacement` : Method ini menghapus route yang sedang ditampilkan kepada pengguna dan menggantinya dengan suatu route. Contoh: 
```
...
    onTap: () {
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(),
        ));
    },
...
```

Method `push()` akan menambahkan route baru diatas route yang sudah ada pada atas stack, sedangkan method `pushReplacement()` menggantikan route yang sudah ada pada atas stack dengan route baru tersebut.

**Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!**
1. **Align**: Widget yang menyesuaikan posisi child-nya dalam dirinya sendiri dan secara opsional menyesuaikan ukurannya berdasarkan ukuran child.
2. **AspectRatio**: Widget yang mengukur child ke rasio aspek tertentu.
3. **Center**: Widget yang menengahkan child-nya dalam dirinya sendiri.
4. **Container**: Widget yang menggabungkan widget pengaturan warna, penempatan, dan ukuran umum.
5. **Expanded**: Widget yang memperluas child dari Row, Column, atau Flex.
6. **Padding**: Widget yang memasukkan child-nya dengan padding yang diberikan.
7. **Stack**: Widget ini berguna jika ingin menumpuk beberapa child dengan cara yang sederhana.
8. **Column**: Widget yang mengatur daftar child widget dalam arah vertikal.
9. **Row**: Widget yang mengatur daftar child widget dalam arah horizontal.
10. **GridView**: Widget yang mengimplementasikan komponen daftar grid.
11. **ListView**: Widget scrolling yang paling umum digunakan. Menampilkan child-nya satu per satu dalam arah scroll.

**Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!**
1. **TextFormField untuk Nama Item**: Elemen ini digunakan untuk memasukkan nama item yang akan ditambahkan. Elemen ini penting karena setiap item perlu memiliki nama untuk identifikasi.
2. **TextFormField untuk Jumlah Item**: Elemen ini digunakan untuk memasukkan jumlah item yang akan ditambahkan. Elemen ini penting untuk mengetahui jumlah item yang ada.
3. **TextFormField untuk Harga Item**: Elemen ini digunakan untuk memasukkan harga item yang akan ditambahkan. Elemen ini penting untuk mengetahui harga dari setiap item.
4. **TextFormField untuk Deskripsi**: Elemen ini digunakan untuk memasukkan deskripsi item yang akan ditambahkan. Elemen ini penting untuk memberikan informasi lebih lanjut tentang item tersebut.

Setiap elemen input juga dilengkapi dengan validator untuk memastikan input tidak kosong dan sesuai dengan format.

**Bagaimana penerapan clean architecture pada aplikasi Flutter?**
Clean Architecture adalah blueprint untuk sistem modular yang mengikuti prinsip desain yang disebut pemisahan kepentingan. Hal ini berfokus pada pembagian *software* menjadi lapisan untuk menyederhanakan *development* dan *maintenance* sistem itu sendiri. Berikut adalah cara penerapannya dalam aplikasi Flutter:
1. **Domain Layer**: Ini adalah inti dari aplikasi yang berisi logika bisnis dan model data.
2. **Application Layer**: Lapisan ini mengimplementasikan use case dari aplikasi dan menghubungkan lapisan infrastruktur dan presentasi.
3. **Infrastructure Layer**: Lapisan ini berurusan dengan interaksi dengan dunia luar termasuk database, server web, antarmuka pengguna.
4. **Presentation Layer**: Lapisan presentasi berisi kode yang render *User Interface* di mana permintaan dibuat dan respons dikembalikan.
5. **Data & Platform layer**: Lapisan data berada di lapisan terluar. Lapisan ini terdiri dari kode sumber data.
6. **Feature Layer**: Lapisan fitur adalah lapisan presentasi dari aplikasi, ini adalah lapisan yang paling bergantung pada kerangka kerja, karena berisi *User Interface* dan penanganan event dari *User Interface*.

**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)**
1. Membuat folder `widgets` dan `screens` pada folder `lib`.
2. Membuat file `drawer.dart` yang berisikan navigasi ke halaman-halaman lainnya seperti `home`, `Tambah Item`, dan `Lihat Item`.
3. Membuat file `form.dart` yang berisikan widget `Scaffold` dimana widget tersebut juga terdiri atas `AppBar`, `endDrawer`, serta `Form`. Lalu `Form` tersebut akan meminta 4 input dari user, yaitu Nama Item, Jumlah Item, Harga Item, dan Deskripsi Item. Kemudian `form.dart` juga akan mengeluarkan `AlertDialog` yang berisikan data item yang ditambahkan ketika user telah menekan tombol `Save`.
4. Membuat `shop_card.dart` yang berisikan navigasi ke halaman `Lihat Item` dan `Tambah Item`.
5. Membuat file `show_items.dart` yang berisikan item-item yang telah ditambahkan. Default isi database nya kosong.
6. Melakukan *styling* pada setiap halaman sehingga warnanya seragam dan fontsize nya cocok.
```
style:
        color: Color(0xFF4477CE) atau Color(0xFF35155D)
        fontSize: disesuaikan dengan halaman, bisa 18
        fontWeight: Untuk yang header, pakai FontWeight.bold . Untuk yang lainnya, pakai FontWeight.normal
```

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