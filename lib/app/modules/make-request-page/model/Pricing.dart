import 'dart:convert';

List<Pricing> pricingFromJson(String str) =>
    List<Pricing>.from(json.decode(str).map((x) => Pricing.fromJson(x)));

String pricingToJson(Pricing data) => json.encode(data.toJson());

class Pricing {
  Pricing({
    required this.id,
    required this.name,
    this.cost,
    required this.volume,
    required this.isChecked,
  });

  int id;
  String name;
  int? cost;
  String volume;
  bool isChecked;
  factory Pricing.fromJson(Map<String, dynamic> json) => Pricing(
      id: json["id"],
      name: json["name"],
      cost: json["cost"],
      volume: json["volume"],
      isChecked: json["isChecked"]);

  Map<String, dynamic> toJson() =>
      {"name": name, "volume": volume, "cost": cost, "isChecked": isChecked};
}
