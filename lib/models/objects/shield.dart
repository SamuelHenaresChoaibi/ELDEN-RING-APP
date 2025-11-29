import 'package:elden_ring_app/models/modelos.dart';

class Shield {
  final String id;
  final String name;
  final String image;
  final String description;
  final List<AttackPower> attack;          
  final List<DefensePower> defence;
  final List<Scaling> scalesWith;          
  final List<RequiredAttribute> requiredAttributes;
  final String category;       
  final double weight;

  Shield({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.attack,
    required this.defence,
    required this.scalesWith,
    required this.requiredAttributes,
    required this.category,
    required this.weight,
  });

  factory Shield.fromJson(Map<String, dynamic> json) {
    return Shield(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      attack: (json['attack'] as List).map((i) => AttackPower.fromJson(i)).toList(),
      defence: (json['defence'] as List).map((i) => DefensePower.fromJson(i)).toList(),
      scalesWith: (json['scalesWith'] as List).map((i) => Scaling.fromJson(i)).toList(),
      requiredAttributes: (json['requiredAttributes'] as List)
          .map((i) => RequiredAttribute.fromJson(i))
          .toList(),
      category: json['category'] as String,
      weight: json['weight'] is int ? (json['weight'] as int).toDouble() : json['weight'] as double,
    );
  }
}