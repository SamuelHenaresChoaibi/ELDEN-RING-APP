class Spirit {
  final String id;
  final String name;
  final String image;
  final String description;
  final int fpCost;    
  final int hpCost;
  final String effect;

  Spirit({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.fpCost,
    required this.hpCost,
    required this.effect,
  });

  factory Spirit.fromJson(Map<String, dynamic> json) {
    return Spirit(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      fpCost: int.parse(json['fpCost'] as String),
      hpCost: int.parse(json['hpCost'] as String),
      effect: json['effect'] as String,
    );
  }

  @override
  String toString() => 'Spirit{name: $name, FP: $fpCost}';
}