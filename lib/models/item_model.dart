// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Collection> productFromJson(String str) => List<Collection>.from(json.decode(str).map((x) => Collection.fromJson(x)));

String productToJson(List<Collection> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Collection {
    String model;
    int pk;
    Fields fields;

    Collection({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    String collection;
    String type;
    int year;
    int amount;
    String description;

    Fields({
        required this.user,
        required this.name,
        required this.collection,
        required this.type,
        required this.year,
        required this.amount,
        required this.description,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        collection: json["collection"],
        type: json["type"],
        year: json["year"],
        amount: json["amount"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "collection": collection,
        "type": type,
        "year": year,
        "amount": amount,
        "description": description,
    };
}
