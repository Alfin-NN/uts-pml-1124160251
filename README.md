# UTS Pemrograman Mobile Lanjutan - Aplikasi Profil Mahasiswa

Proyek ini disusun untuk memenuhi Ujian Tengah Semester (UTS) mata kuliah **Pemrograman Mobile Lanjutan**, Program Studi Teknik Informatika, Institut Teknologi & Bisnis Bina Sarana Global.

---

## 👤 Identitas Mahasiswa
- **Nama** : Azkia Alfin Zulfikar
- **NIM** : 1124160251
- **Program Studi** : Teknik Informatika
- **Kelas** : TI SE 24 M (Malam)
- **Repository GitHub** : [https://github.com/Alfin-NN/uts-pml-1124160251](https://github.com/Alfin-NN/uts-pml-1124160251)
- **Link Video Presentasi YouTube** : https://youtu.be/6MhwNCJ7HpQ

---

## 📁 Struktur Repository
Sesuai ketentuan silabus & panduan ujian:
```text
uts-pml-1124160251/
├── soal1-live-coding/                # Proyek Soal 1: Live Coding Profil Mahasiswa (StatelessWidget)
│   ├── lib/
│   │   └── main.dart
│   └── pubspec.yaml
├── soal2_profil_app/                 # Proyek Soal 2: Proyek Aplikasi Android Profil Mahasiswa
│   ├── assets/
│   │   └── images/
│   │       └── profile.png           # Foto Diri Profil Mahasiswa
│   ├── lib/
│   │   ├── main.dart                 # MaterialApp, routes (/login, /dashboard, /profile), tema terang & gelap
│   │   ├── models/
│   │   │   └── profile.dart          # Model data Profile & method copyWith
│   │   ├── screens/
│   │   │   ├── login_page.dart       # Landing Page dengan tombol navigasi masuk ke Dashboard
│   │   │   ├── dashboard_page.dart   # Halaman Dashboard Mahasiswa & status akademik
│   │   │   ├── profile_page.dart     # Halaman Profil Utama (Drawer, BottomNav, FAB, Theme Switcher)
│   │   │   ├── edit_profile_page.dart# Form Edit Profil dengan validasi & update state via Navigator.pop
│   │   │   └── about_page.dart       # Halaman Tentang Saya (ListView keahlian & riwayat pendidikan)
│   │   └── widgets/
│   │       └── info_tile.dart        # Widget reusable InfoTile (ListTile kustom)
│   ├── pubspec.yaml                  # Konfigurasi dependensi dan registrasi aset
│   └── android/app/src/main/AndroidManifest.xml # Label nama aplikasi di HP (Profil Alfin)
└── README.md                         # Dokumentasi proyek lengkap
```

---

## 📱 Fitur-Fitur Aplikasi (Soal 2)
1. **Halaman Gerbang Masuk (Landing Page)**:
   - Tampilan pembuka yang bersih dan elegan dengan logo branding mahasiswa.
   - Tombol utama **Masuk ke Dashboard** dengan animasi loading progresif saat ditekan.
   - Menggunakan `Navigator.pushReplacementNamed` untuk langsung berpindah ke Dashboard mahasiswa.
2. **Halaman Profil Utama**:
   - Menampilkan foto profil dari direktori `assets/images/profile.png` dengan `CircleAvatar`.
   - Menampilkan Nama, NIM, Kelas, Program Studi, dan Bio ringkas.
   - Kartu kontak interaktif menggunakan widget `Card` dan `InfoTile` reusable (Email, No HP, Kelas, GitHub).
3. **Edit Profil Dinamis (State Management)**:
   - Form formulir edit data profil dengan validasi (Nama wajib, format email regex, nomor HP hanya angka 10–13 digit).
   - Nilai awal form otomatis terisi dari profil saat ini (`TextEditingController`).
   - Data diperbarui secara instan pada Halaman Profil menggunakan `Navigator.pop(context, updatedProfile)` dan `setState()`.
4. **Halaman Tentang Saya**:
   - Menampilkan daftar keahlian & minat mahasiswa menggunakan `ListView.separated`.
   - Menampilkan riwayat pendidikan formal secara terstruktur.
5. **Dukungan Scaffold Lengkap**:
   - `AppBar` dengan tombol toggle tema cepat dan aksi navigasi.
   - `Drawer` interaktif lengkap dengan `UserAccountsDrawerHeader`, navigasi antarhalaman, switch mode gelap, serta tombol logout.
   - `BottomNavigationBar` (Material 3 `NavigationBar`) untuk perpindahan menu yang responsif.
   - `FloatingActionButton` untuk akses cepat fitur Edit Profil.
6. **Tema Terang & Gelap (Light / Dark Mode)**:
   - Konfigurasi `theme` dan `darkTheme` dengan skema warna Material 3 (`ColorScheme.fromSeed(seedColor: Colors.teal)`).
   - Switch mode tema yang dapat diubah langsung dari AppBar maupun Drawer secara realtime menggunakan `ValueNotifier`.
7. **Identitas Aplikasi Android**:
   - Atribut `android:label="Profil Alfin"` pada `AndroidManifest.xml` sehingga nama aplikasi pada layar perangkat Android tampil sebagai **Profil Alfin**.

---

## 🚀 Cara Menjalankan Aplikasi

### 1. Menjalankan Proyek Soal 1 (Live Coding)
```bash
cd soal1-live-coding
flutter pub get
flutter run
```

### 2. Menjalankan Proyek Soal 2 (Aplikasi Android Profil)
```bash
cd soal2_profil_app
flutter pub get
flutter run
```
