class Location {
  final String id;
  final String name;
  final String image;
  final String description;

  Location({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
    );
  }

  @override
  String toString() {
    return 'Location{name: $name}';
  }
}