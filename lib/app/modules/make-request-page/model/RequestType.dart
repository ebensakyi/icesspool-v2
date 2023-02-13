import 'dart:convert';

RequestType requestTypeFromJson(String str) =>
    RequestType.fromJson(json.decode(str));

String requestTypeToJson(RequestType data) => json.encode(data.toJson());

class RequestType {
  RequestType({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory RequestType.fromJson(Map<String, dynamic> json) => RequestType(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
