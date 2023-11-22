import 'package:flutter/material.dart';
import 'package:museum_collection/models/item_model.dart';

class CollectionDetailPage extends StatelessWidget {
  final Collection collection;

  const CollectionDetailPage({Key? key, required this.collection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(collection.fields.name),
        backgroundColor: const Color.fromARGB(255, 248, 224, 104)
      ),
      body: Container(
        color: const Color.fromARGB(255, 147, 204, 234),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${collection.fields.collection}',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("Type          : ${collection.fields.type}"),
              const SizedBox(height: 10),
              Text("Year Invented : ${collection.fields.year}"),
              const SizedBox(height: 10),
              Text("Amount        : ${collection.fields.amount}"),
              const SizedBox(height: 10),
              Text("Description   : ${collection.fields.description}")
            ],
          ),
        ),
      )
    );
  }
}