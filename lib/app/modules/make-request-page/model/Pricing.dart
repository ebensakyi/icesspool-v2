import 'dart:convert';

List<Pricing> pricingFromJson(String str) =>
    List<Pricing>.from(json.decode(str).map((x) => Pricing.fromJson(x)));

String pricingToJson(Pricing data) => json.encode(data.toJson());

class Pricing {
  Pricing({
    required this.name,
    required this.cost,
    required this.volume,
  });

  String name;
  int cost;
  int volume;

  factory Pricing.fromJson(Map<String, dynamic> json) => Pricing(
        name: json["name"],
        cost: json["cost"],
        volume: json["volume"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "volume": volume,
        "cost": cost,
      };
}
