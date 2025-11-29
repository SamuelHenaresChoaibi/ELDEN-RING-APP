class Boss {
  final String id;
  final String name;
  final String image;
  final String description;
  final String location;
  final List<String> drops;    
  final String healthPoints;

  Boss({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.location,
    required this.drops,
    required this.healthPoints,
  });

  factory Boss.fromJson(Map<String, dynamic> json) {
    var dropsList = json['drops'] as List;
    
    return Boss(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      drops: dropsList.map((e) => e as String).toList(),
      healthPoints: json['healthPoints'] as String,
    );
  }

  @override
  String toString() {
    return 'Boss{name: $name, location: $location, HP: $healthPoints}';
  }
}