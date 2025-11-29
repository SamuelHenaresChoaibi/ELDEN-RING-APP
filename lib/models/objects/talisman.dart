class Talisman {
  final String id;
  final String name;
  final String image;
  final String description;
  final String effect;

  Talisman({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.effect,
  });

  factory Talisman.fromJson(Map<String, dynamic> json) {
    return Talisman(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      effect: json['effect'] as String,
    );
  }

  @override
  String toString() => 'Talisman{name: $name}';
}