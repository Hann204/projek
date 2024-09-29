import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CertificationForm(),
    );
  }
}

class CertificationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD6E4FF), // Warna latar biru muda
        centerTitle: true,
        title: Text(
          "MASUKKAN SERTIFIKASI",
          style: TextStyle(
            color: Colors.black, // Warna teks hitam
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black), // Ikon menu berwarna hitam
          onPressed: () {
            // Fungsi untuk membuka drawer
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {
              // Fungsi ketika ikon lonceng ditekan
              print("Lonceng ditekan");
            },
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.black),
            onPressed: () {
              // Fungsi ketika ikon orang ditekan
              print("Icon orang ditekan");
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle tap on item 1
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle tap on item 2
              },
            ),
            ListTile(
              title: Text('Item 3'),
              onTap: () {
                // Handle tap on item 3
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_picture.png'), // Ganti dengan path gambar yang sesuai
            ),
            SizedBox(height: 16),
            Text(
              "John Doe - Nama Dosen",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Pengajar Prodi",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Judul Sertifikasi',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Deskripsi terkait Sertifikasi',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Tanggal mulai - Tanggal berakhir',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_today),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Jenis Sertifikasi',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nomer Sertifikat',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.upload_file),
                    label: Text('Upload Bukti Sertifikat'),
                    onPressed: () {
                      // Fungsi untuk upload
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Fungsi batal
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Tombol batal warna merah
                  ),
                  child: Text('Batal'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Fungsi upload
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Tombol upload warna hijau
                  ),
                  child: Text('Upload'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
