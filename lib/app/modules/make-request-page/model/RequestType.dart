// To parse this JSON data, do
//
//     final requestType = requestTypeFromJson(jsonString);

import 'dart:convert';

List<RequestType> requestTypeFromJson(String str) => List<RequestType>.from(
    json.decode(str).map((x) => RequestType.fromJson(x)));

String requestTypeToJson(RequestType data) => json.encode(data.toJson());

class RequestType {
  RequestType({
    required this.id,
    required this.name,
    required this.deleted,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  int deleted;
  DateTime createdAt;
  DateTime updatedAt;

  factory RequestType.fromJson(Map<String, dynamic> json) => RequestType(
        id: json["id"],
        name: json["name"],
        deleted: json["deleted"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "deleted": deleted,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
