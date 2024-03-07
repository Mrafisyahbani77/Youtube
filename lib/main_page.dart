import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // Bagian atas (contoh: tombol navigasi)
            Container(
              height: 50, // Tinggi bagian atas
              color: Colors.black, // Warna latar belakang
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.menu, color: Colors.white),
                    onPressed: () {
                      // Tambahkan aksi ketika tombol menu diklik
                    },
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'YouTube',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
            // Bagian tengah (contoh: daftar video)
            Expanded(
              child: ListView.builder(
                itemCount: 20, // Jumlah video
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: const FlutterLogo(size: 56), // Gambar video
                    title: Text('Judul Video $index', style: const TextStyle(color: Colors.black87)), // Judul video
                    subtitle: const Text('Deskripsi video'), // Deskripsi video
                    onTap: () {
                      // Tambahkan aksi ketika item video diklik
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          color: Colors.black,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  <Widget>[
              const Icon(Icons.account_circle, color: Colors.white),
              const SizedBox(width: 20),
              const Icon(Icons.more_vert, color: Colors.white),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan aksi ketika tombol tambahan diklik
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
