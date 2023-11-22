import 'package:flutter/material.dart';
import 'package:museum_collection/screens/collection_form.dart';
import 'package:museum_collection/screens/collection_list.dart';
import 'package:museum_collection/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class MuseumItem {
  final String name;
  final IconData icon;

  MuseumItem(this.name, this.icon);
}

class CollectionCard extends StatelessWidget {
  final MuseumItem item;

  const CollectionCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
      color: const Color.fromARGB(255, 147, 204, 234),
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () async {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

          // Navigate ke route yang sesuai
          if (item.name == "Tambah Koleksi") {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CollectionFormPage()));
          } else if (item.name == "Lihat Koleksi") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CollectionPage()));
          } else if (item.name == "Logout") {
          final response = await request.logout(
            // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
            "https://erstevan-laurel-tugas.pbp.cs.ui.ac.id//auth/logout/");
            String message = response["message"];
            if (response['status']) {
              String uname = response["username"];
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message Sampai jumpa, $uname."),
              ));
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message"),
              ));
            }
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 248, 224, 104),
          border: Border.all(
            color: Colors.white, 
            width: 2.0, 
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.grey.shade800,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Color.fromARGB(255, 16, 34, 50)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}