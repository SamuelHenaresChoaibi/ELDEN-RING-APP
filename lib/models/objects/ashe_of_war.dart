class AshOfWar {
  final String id;
  final String name;
  final String image;
  final String description;
  final String affinity; 
  final String skill;

  AshOfWar({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.affinity,
    required this.skill,
  });

  factory AshOfWar.fromJson(Map<String, dynamic> json) {
    return AshOfWar(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      affinity: json['affinity'] as String,
      skill: json['skill'] as String,
    );
  }

  @override
  String toString() {
    return 'AshOfWar{name: $name, affinity: $affinity, skill: $skill}';
  }
}