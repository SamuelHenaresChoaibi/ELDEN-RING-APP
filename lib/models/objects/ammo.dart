import 'package:elden_ring_app/models/modelos.dart';

class Ammo {
  final String id;
  final String name;
  final String image;
  final String description;
  final String type;
  final List<AttackPower> attackPower;
  final String passive;

  Ammo({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.type,
    required this.attackPower,
    required this.passive,
  });

  factory Ammo.fromJson(Map<String, dynamic> json) {
    var attackPowerList = json['attackPower'] as List;
    List<AttackPower> attackPower = attackPowerList
        .map((item) => AttackPower.fromJson(item))
        .toList();

    return Ammo(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      attackPower: attackPower,
      passive: json['passive'] as String? ?? '-',
    );
  }
}
