import 'package:flutter/material.dart';
import 'package:myapp/models/lokasi.dart';

class Sidebar extends StatelessWidget {
  final Function(String) onLokasiSelected; // Callback untuk mengirim data lokasi

  const Sidebar({super.key, required this.onLokasiSelected});

  @override
  Widget build(BuildContext context) {
    List<lokasi> lok = listlokasi;

    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 0, 57, 41),
        child: ListView(
          children: List.generate(
            lok.length,
            (index) => ListTile(
              iconColor: Colors.white,
              leading: const Icon(Icons.location_on),
              title: Text(
                lok[index].nama,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontSize: 15,
                ),
              ),
              onTap: () {
                onLokasiSelected(lok[index].nama); // Kirim lokasi ke MainPage
                Navigator.pop(context); // Tutup Drawer
              },
            ),
          ),
        ),
      ),
    );
  }
}