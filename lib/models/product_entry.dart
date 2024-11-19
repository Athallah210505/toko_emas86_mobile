// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    Model model;
    String pk;
    Fields fields;

    ProductEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        model: modelValues.map[json["model"]]!,
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    double price;
    String goldName;
    double quantity;
    String description;
    String name;
    String npm;
    String kelas;

    Fields({
        required this.user,
        required this.price,
        required this.goldName,
        required this.quantity,
        required this.description,
        required this.name,
        required this.npm,
        required this.kelas,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        price: json["price"]?.toDouble(),
        goldName: json["gold_name"],
        quantity: json["quantity"]?.toDouble(),
        description: json["description"],
        name: json["name"],
        npm: json["npm"],
        kelas: json["kelas"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "price": price,
        "gold_name": goldName,
        "quantity": quantity,
        "description": description,
        "name": name,
        "npm": npm,
        "kelas": kelas,
    };
}

enum Model {
    MAIN_PRODUCT
}

final modelValues = EnumValues({
    "main.product": Model.MAIN_PRODUCT
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
