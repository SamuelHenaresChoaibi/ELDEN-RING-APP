import 'package:elden_ring_app/models/modelos.dart';

class Armor {
  final String id;
  final String name;
  final String image;
  final String description;
  final String category;
  final List<DamageNegation> dmgNegation;
  final List<Resistance> resistance;
  final double weight;

  Armor({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.category,
    required this.dmgNegation,
    required this.resistance,
    required this.weight,
  });

  factory Armor.fromJson(Map<String, dynamic> json) {
    var dmgList = json['dmgNegation'] as List;
    var resList = json['resistance'] as List;

    return Armor(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      dmgNegation: dmgList.map((i) => DamageNegation.fromJson(i)).toList(),
      resistance: resList.map((i) => Resistance.fromJson(i)).toList(),
      weight: (json['weight'] is int)
          ? (json['weight'] as int).toDouble()
          : json['weight'] as double,
    );
  }
}