import 'package:flutter/material.dart';
import 'package:museum_collection/screens/collection_detail.dart';
import 'package:museum_collection/widgets/left_drawer.dart';
import 'package:museum_collection/models/item_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class CollectionPage extends StatefulWidget {
    const CollectionPage({Key? key}) : super(key: key);

    @override
    _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
Future<List<Collection>> fetchProduct() async {
    var url = Uri.parse(
        'https://erstevan-laurel-tugas.pbp.cs.ui.ac.id/json/');
    var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
    List<Collection> list_product = [];
    for (var d in data) {
        if (d != null) {
            list_product.add(Collection.fromJson(d));
        }
    }
    return list_product;
}

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 248, 224, 104),
          title: const Text(
            'Daftar Produk',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: const LeftDrawer(),
        body: Container(
          color: const Color.fromARGB(255, 147, 204, 234),
          child: FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                return const Column(
                  children: [
                    Text(
                        "Tidak ada data produk.",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CollectionDetailPage(collection: snapshot.data![index]),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                              "${snapshot.data![index].fields.collection}",
                              style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text("Amount      : ${snapshot.data![index].fields.amount}"),
                              const SizedBox(height: 10),
                              Text("Description : ${snapshot.data![index].fields.description}"),
                              ],
                            ),
                          )
                   )
                 );
                }
              }
            }
          )
        )
      );
    }
}