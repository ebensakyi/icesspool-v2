// To parse this JSON data, do
//
//     final region = regionFromJson(jsonString);

import 'dart:convert';

List<Region> regionFromJson(String str) =>
    List<Region>.from(json.decode(str).map((x) => Region.fromJson(x)));

String regionToJson(Region data) => json.encode(data.toJson());

class Region {
  Region({required this.id, required this.name});

  int id;
  String name;

  factory Region.fromJson(Map<String, dynamic> json) =>
      Region(id: json["id"], name: json["name"]);

  Map<String, dynamic> toJson() => {"id": id, "name": name};
}
