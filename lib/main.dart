import 'package:flutter/material.dart';

// Fungsi utama yang menjalankan aplikasi Flutter
void main() {
  runApp(const MyApp());
}

// Kelas utama aplikasi yang menggunakan StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner "Debug" di pojok kanan atas
      theme: ThemeData(), // Tema aplikasi (bisa dikustomisasi)
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "I Am Ironman", // Judul pada AppBar
            style: TextStyle(color: Colors.white), // Warna teks agar lebih kontras
          ),
          centerTitle: true, // Menengahkan teks di AppBar
          backgroundColor: const Color(0xFF7A1D1D), // Warna latar belakang AppBar
          elevation: 0, // Menghilangkan efek bayangan AppBar
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, // Mengatur ukuran kolom agar pas dengan kontennya
            children: [
              Image.asset(
                'assets/images/gambar.png', // Menampilkan gambar dari folder aset
                width: 200, // Lebar gambar
                height: 200, // Tinggi gambar
              ),
              const SizedBox(height: 10), // Memberi jarak antara gambar dan teks
              Container(
                padding: const EdgeInsets.all(10), // Memberikan ruang di dalam container
                decoration: BoxDecoration(
                  color: Colors.white, // Warna latar belakang container
                  borderRadius: BorderRadius.circular(10), // Membuat sudut membulat
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26, // Warna bayangan
                      blurRadius: 5, // Seberapa kabur bayangan
                      offset: Offset(2, 2), // Posisi bayangan
                    ),
                  ],
                ),
                child: const Text(
                  "Genius, billionaire, playboy, philanthropist.", // Teks di dalam container
                  style: TextStyle(
                    fontFamily: "Marvel", // Menggunakan font "Marvel"
                    fontSize: 18, // Ukuran teks
                    fontWeight: FontWeight.bold, // Membuat teks tebal
                    color: Colors.black87, // Warna teks
                  ),
                  textAlign: TextAlign.center, // Menengahkan teks
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromRGBO(236, 235, 235, 1.0), // Warna latar belakang layar
      ),
    );
  }
}
