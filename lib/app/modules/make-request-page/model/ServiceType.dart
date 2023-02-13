import 'dart:convert';

List<ServiceType> serviceTypeFromJson(String str) => List<ServiceType>.from(
    json.decode(str).map((x) => ServiceType.fromJson(x)));

String serviceTypeToJson(ServiceType data) => json.encode(data.toJson());

class ServiceType {
  ServiceType({
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
  factory ServiceType.fromJson(Map<String, dynamic> json) => ServiceType(
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
