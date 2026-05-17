# 🎸 UKM Band - Platform Musik Mobile & Backend API Glassmorphism

[![UKM Band Platform](https://img.shields.io/badge/Platform-Flutter%20%7C%20Laravel%2012-red?style=for-the-badge&logo=laravel&logoColor=white)](https://github.com/Ashlxxy/Tubes-Kelompok2-WebPro)
[![Developer Team](https://img.shields.io/badge/Kelompok-2_WebPro-crimson?style=for-the-badge)](https://github.com/Ashlxxy/Tubes-Kelompok2-WebPro)

Repository ini berisi kode sumber lengkap untuk **UKM Band Music Streaming Platform** — platform musik digital khusus Unit Kegiatan Mahasiswa (UKM) Band Universitas Telkom. Platform ini terdiri dari **Aplikasi Mobile (Flutter)** bergaya premium dan **Web Portal & REST API (Laravel)** berbasis database SQLite terintegrasi dengan arsitektur modern bertema **Premium Dark Glassmorphism**.

---

## 📱 TAMPILAN APLIKASI MOBILE (FLUTTER) — PRIORITAS UTAMA

Berikut adalah tampilan antarmuka pengguna (UI/UX) pada aplikasi mobile Flutter yang mengadopsi tema **Premium Dark Glassmorphism** dengan pendaran neon merah crimson:

<table align="center">
  <tr>
    <td align="center" width="33%">
      <img src="docs/screenshots/mobile_song_detail.png" alt="Detail Lagu Mobile" width="100%" style="border-radius: 12px; border: 1px solid rgba(255,255,255,0.1);"/><br/>
      <b>🎵 Detail Lagu & Pemutar</b>
    </td>
    <td align="center" width="33%">
      <img src="docs/screenshots/mobile_profile.png" alt="Profil Saya Mobile" width="100%" style="border-radius: 12px; border: 1px solid rgba(255,255,255,0.1);"/><br/>
      <b>👤 Profil Saya</b>
    </td>
    <td align="center" width="33%">
      <img src="docs/screenshots/mobile_edit_profile.png" alt="Edit Profil Mobile" width="100%" style="border-radius: 12px; border: 1px solid rgba(255,255,255,0.1);"/><br/>
      <b>⚙️ Edit Profil</b>
    </td>
  </tr>
  <tr>
    <td align="center" width="33%">
      <img src="docs/screenshots/mobile_song_card.png" alt="Widget Lagu" width="100%" style="border-radius: 12px; border: 1px solid rgba(255,255,255,0.1);"/><br/>
      <b>🖼️ Widget Kartu Lagu</b>
    </td>
    <td align="center" width="33%">
      <img src="docs/screenshots/mobile_comments.png" alt="Input Komentar" width="100%" style="border-radius: 12px; border: 1px solid rgba(255,255,255,0.1);"/><br/>
      <b>💬 Kolom Komentar</b>
    </td>
    <td align="center" width="33%">
      <img src="docs/screenshots/mobile_about.png" alt="Tentang Aplikasi" width="100%" style="border-radius: 12px; border: 1px solid rgba(255,255,255,0.1);"/><br/>
      <b>ℹ️ Tentang Aplikasi</b>
    </td>
  </tr>
</table>

---

## 🌐 TAMPILAN PORTAL WEB (LARAVEL OVERHAUL)

Website UKM Band telah **dirombak total secara global** agar memiliki desain **Glassmorphism** semi-transparan yang berpadu serasi dengan tema pendaran ambient mengambang dari versi mobile:

<table align="center">
  <tr>
    <td align="center" width="50%">
      <img src="docs/screenshots/web_landing.png" alt="Landing Page Web" width="100%" style="border-radius: 8px; border: 1px solid rgba(255,255,255,0.1);"/><br/>
      <b>🌐 Landing Page (Glassmorphic Cards)</b>
    </td>
    <td align="center" width="50%">
      <img src="docs/screenshots/web_login.png" alt="Portal Login Web" width="100%" style="border-radius: 8px; border: 1px solid rgba(255,255,255,0.1);"/><br/>
      <b>🔑 Portal Login Kaca Premium</b>
    </td>
  </tr>
  <tr>
    <td align="center" width="50%">
      <img src="docs/screenshots/web_song_detail.png" alt="Detail Lagu Web" width="100%" style="border-radius: 8px; border: 1px solid rgba(255,255,255,0.1);"/><br/>
      <b>💬 Detail Lagu & Area Komentar</b>
    </td>
    <td align="center" width="50%">
      <img src="docs/screenshots/web_active_playback.png" alt="Pemutar Musik Web" width="100%" style="border-radius: 8px; border: 1px solid rgba(255,255,255,0.1);"/><br/>
      <b>🎶 Pemutar Musik Aktif (WAV High-Res)</b>
    </td>
  </tr>
</table>

---

## 📂 Struktur Repositori

Proyek ini dibagi menjadi dua bagian utama:
*   `backend/` — Aplikasi backend berbasis Laravel 12 yang bertindak sebagai Web Server dan REST API untuk aplikasi mobile. Menggunakan SQLite untuk kenyamanan pengembangan lokal.
*   `ukm_band_mobile/` — Aplikasi musik mobile berbasis Flutter yang mengonsumsi REST API backend dan menggunakan state management Provider.

---

## 🔑 Kredensial Akun Default (Uji Coba)

Gunakan kredensial berikut untuk melakukan login dan menguji semua fitur platform:

| Peran (Role) | Email Pengguna | Kata Sandi (Password) | Keterangan Akses |
| :--- | :--- | :--- | :--- |
| **Administrator** | `admin@ukmband.telkom` | `admin123` | Akses penuh dashboard admin web portal (Ditolak pada aplikasi mobile) |
| **User Demo** | `user@example.com` | `password` | Akses streaming lagu, playlist, dan komentar di web maupun aplikasi mobile |

---

## 🛠️ Panduan Instalasi & Pengaktifan Lokal

### 1. Web Portal & REST API (Laravel)

#### Persyaratan Sistem
*   PHP >= 8.2 (dilengkapi ekstensi pdo_sqlite)
*   Composer
*   Node.js & npm

#### Langkah Instalasi
1.  Masuk ke direktori backend:
    ```bash
    cd backend
    ```
2.  Pasang dependensi PHP dan Javascript:
    ```bash
    composer install
    npm install
    ```
3.  Salin file konfigurasi lingkungan:
    ```bash
    cp .env.example .env
    php artisan key:generate
    ```
4.  Konfigurasikan database SQLite pada file `.env`:
    ```env
    DB_CONNECTION=sqlite
    # Hapus baris DB_DATABASE, DB_USERNAME, DB_PASSWORD bawaan lainnya
    ```
5.  Jalankan migrasi database beserta data awal (seeder) yang mencakup data lagu beresolusi tinggi (WAV) asli dari mobile:
    ```bash
    php artisan migrate:fresh --seed
    ```
6.  Hubungkan direktori penyimpanan media:
    ```bash
    php artisan storage:link
    ```
7.  Kompilasi aset front-end dan jalankan server lokal:
    ```bash
    npm run build
    php artisan serve
    ```
    *Portal Web akan aktif pada alamat `http://127.0.0.1:8000` dan REST API pada `http://127.0.0.1:8000/api`.*

> **Tips:** Apabila pemutaran lagu WAV berukuran besar mengalami kendala limit memori, jalankan PHP server dengan parameter tambahan berikut:
> `php -d upload_max_filesize=100M -d post_max_size=100M -S 127.0.0.1:8000 -t public`

---

### 2. Aplikasi Mobile (Flutter)

#### Persyaratan Sistem
*   Flutter SDK (versi terbaru disarankan)
*   Android Studio / VS Code dengan plugin Flutter terpasang
*   Emulator Android atau perangkat fisik untuk pengujian

#### Langkah Instalasi
1.  Masuk ke direktori aplikasi mobile:
    ```bash
    cd ukm_band_mobile
    ```
2.  Ambil dependensi proyek:
    ```bash
    flutter pub get
    ```
3.  Sesuaikan alamat REST API backend:
    *   Buka file `lib/services/api_service.dart`.
    *   Untuk pengujian emulator Android standar, endpoint default adalah `http://10.0.2.2:8000`.
    *   Jika menggunakan perangkat fisik, ubah `baseUrl` menjadi IP lokal komputer server Anda (contoh: `http://192.168.1.10:8000`).
4.  Jalankan aplikasi pada perangkat pengujian:
    ```bash
    flutter run
    ```

---

## 📊 Diagram Relasi Database (Class Diagram)

Berikut adalah rancangan hubungan tabel basis data yang mendukung seluruh fitur terintegrasi di dalam platform UKM Band:

```mermaid
classDiagram
    class User {
        +String name
        +String email
        +String password
        +String role
        +playlists()
        +history()
        +likedSongs()
    }

    class Song {
        +String title
        +String artist
        +String description
        +String cover_path
        +String file_path
        +int plays
        +int likes
        +playlists()
        +histories()
        +likedByUsers()
        +comments()
    }

    class Playlist {
        +String name
        +int user_id
        +user()
        +songs()
    }

    class Comment {
        +String content
        +int user_id
        +int song_id
        +int parent_id
        +user()
        +song()
        +parent()
        +replies()
    }

    class History {
        +DateTime played_at
        +int user_id
        +int song_id
        +user()
        +song()
    }

    class Feedback {
        +String name
        +String email
        +String message
    }

    User "1" --> "*" Playlist : membuat
    User "1" --> "*" History : merekam_aktivitas
    User "*" --> "*" Song : menyukai
    User "1" --> "*" Comment : menulis
    User "1" --> "*" Feedback : mengirim
    
    Playlist "*" --> "*" Song : berisi
    
    Song "1" --> "*" History : memiliki
    Song "1" --> "*" Comment : memiliki
    
    Comment "1" --> "*" Comment : merupakan_balasan_dari
```

---
Dibuat dengan penuh dedikasi oleh **Kelompok 2 WebPro (Tubes-APB)**. Selamat mendengarkan karya musik terbaik anak bangsa! 🎧🔥
