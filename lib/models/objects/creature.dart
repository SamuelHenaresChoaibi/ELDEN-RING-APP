class Creature {
  final String id;
  final String name;
  final String image;
  final String description;
  final String location;
  final List<String> drops;  

  Creature({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.location,
    required this.drops,
  });

  factory Creature.fromJson(Map<String, dynamic> json) {
    var dropsList = json['drops'] as List;

    return Creature(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      drops: dropsList.map((e) => e as String).toList(),
    );
  }

  bool get hasDrops => drops.isNotEmpty && drops.first != "None";

  @override
  String toString() {
    return 'Creature{name: $name, location: $location, drops: $drops}';
  }
}