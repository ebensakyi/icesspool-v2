import 'dart:convert';

ServiceType serviceTypeFromJson(String str) =>
    ServiceType.fromJson(json.decode(str));

String serviceTypeToJson(ServiceType data) => json.encode(data.toJson());

class ServiceType {
  ServiceType({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory ServiceType.fromJson(Map<String, dynamic> json) => ServiceType(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
