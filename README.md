# Belajar Flutter - Praktikum Pemrograman Mobile

Proyek Flutter ini berisi implementasi materi **Modul 2** (Widget & Design) dan **Modul 3** (Routes, Side Menu, Login, & Local Storage SharedPreferences).

---

## 📚 Modul & Fitur Aplikasi

### 🔵 Modul 2: Widget & Design Framework Flutter
Mempelajari penggunaan widget dasar (`StatelessWidget` dan `StatefulWidget`), tata letak layout (`Column` dan `Row`), pengiriman data form via `Navigator`, serta widget `ListView` & `Card`.

#### 1. **Hello World (`lib/hello_world.dart`)**
- `StatelessWidget` dasar berisi `Scaffold`, `AppBar`, `Center`, dan `Text`.
- **Tampilan:**
  ```
  +-----------------------------------+
  | Belajar Flutter            [App]  |
  +-----------------------------------+
  |                                   |
  |            Hello World            |
  |                                   |
  +-----------------------------------+
  ```

#### 2. **Widget Column (`lib/column_widget.dart`)**
- Menampilkan daftar elemen teks secara vertikal.
- **Tampilan:** `Kolom 1`, `Kolom 2`, `Kolom 3`, `Kolom 4`.

#### 3. **Widget Row (`lib/row_widget.dart`)**
- Menampilkan daftar elemen teks secara horizontal.
- **Tampilan:** `Row 1 | Row 2 | Row 3 | Row 4`.

#### 4. **Form Produk & Detail (`lib/ui/produk_form.dart` & `lib/ui/produk_detail.dart`)**
- Form input interaktif menggunakan `TextField` (`Kode Produk`, `Nama Produk`, `Harga`) dan tombol `Simpan`.
- Mengirim data yang diinput ke halaman `ProdukDetail` via `MaterialPageRoute`.
- **Tampilan Form & Detail:**
  ```
  [ Form Produk ]               [ Detail Produk ]
  Kode Produk : [_______]  --->  Kode Produk : BRG001
  Nama Produk : [_______]        Nama Produk : Laptop
  Harga       : [_______]        Harga Produk : 15000000
    [ Simpan ]
  ```

#### 5. **ListView Data Produk (`lib/ui/produk_page.dart`)**
- Menampilkan daftar data barang menggunakan `ListView`, `Card`, dan `ListTile` (`Kulkas`, `Playstation`, `Radio`).

---

### 🟢 Modul 3: Routes, Side Menu, Login & Local Storage
Mempelajari alur autentikasi login pengguna, pengelolaan state sesi dengan `SharedPreferences`, serta navigasi drawer (`Sidemenu`).

#### 🔑 Kredensial Login Demo
- **Username:** `admin`
- **Password:** `admin`

#### 1. **Halaman Login (`lib/login_page.dart`)**
- Input `Username` dan `Password` dengan validasi kredensial.
- Menyimpan data `username` ke local storage HP menggunakan `SharedPreferences` saat berhasil login.
- Menampilkan pop-up `AlertDialog` untuk respon login ("Anda Berhasil Login" atau "Username dan Password Salah").
- **Tampilan:**
  ```
  +-----------------------------------+
  | Login                             |
  +-----------------------------------+
  |                                   |
  |   Masukkan Username [ admin     ] |
  |   Masukkan Password [ *****     ] |
  |                                   |
  |            [ Login ]              |
  +-----------------------------------+
  ```

#### 2. **Home Page (`lib/home_page.dart`)**
- Membaca `username` tersimpan dari `SharedPreferences` (`_loadUsername()`) dan menampilkan teks pesan personal: `Ini adalah halaman User admin`.
- Terhubung dengan drawer menu samping (`Sidemenu`).

#### 3. **Side Menu / Drawer (`lib/sidemenu.dart`)**
- Navigasi drawer berisi pilihan menu:
  - 🏠 **Home** -> Navigasi ke `HomePage`
  - ℹ️ **About** -> Navigasi ke `AboutPage`

#### 4. **About Page (`lib/about_page.dart`)**
- Halaman informasi dengan navigasi `Sidemenu` drawer.

---

## 💻 Cara Menjalankan Proyek

1. **Clone Repository:**
   ```bash
   git clone https://github.com/FahriID563/H1D024012-Praktikum_mobile_Flutter_V2.git
   cd Belajar_Flutter
   ```

2. **Install Package Dependencies:**
   ```bash
   flutter pub get
   ```

3. **Jalankan Aplikasi:**
   ```bash
   flutter run
   ```
