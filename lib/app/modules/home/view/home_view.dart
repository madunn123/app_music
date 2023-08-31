import 'dart:convert';
import 'package:app_music/app/utils/main_applayout.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Future<List<Map<String, dynamic>>> fetchData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      // Jika permintaan berhasil, parsing JSON dari respons
      final List<dynamic> jsonData = json.decode(response.body);

      // Mengonversi data JSON menjadi list Map
      List<Map<String, dynamic>> data = [];
      for (var item in jsonData) {
        data.add({
          'name': item['name'],
          'email': item['email'],
        });
      }

      return data;
    } else {
      // Jika permintaan gagal, lemparkan exception atau lakukan penanganan error sesuai kebutuhan
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MyAppLayout(
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Tampilkan indikator loading jika sedang menunggu data
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            // Tampilkan pesan error jika terjadi kesalahan
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            // Menangani kasus ketika tidak ada data yang diterima
            return Center(
              child: Text('No Data Available'),
            );
          } else {
            // Tampilkan grid dengan data dari API
            final data = snapshot.data ?? [];
            return GridView.builder(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                final item = data[index];
                return GestureDetector(
                  onTap: () {
                    // Aksi saat salah satu item grid ditekan
                    // Tambahkan logika perpindahan halaman atau tindakan lain di sini
                  },
                  child: Card(
                    elevation: 0, // Menghilangkan shadow
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Stack(
                        children: [
                          // Gantilah item 'image' dengan 'email' atau atribut lainnya yang Anda inginkan
                          Text(
                            item['email'],
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
