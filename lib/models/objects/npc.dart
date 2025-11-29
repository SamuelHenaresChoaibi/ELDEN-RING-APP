class Npc {
  final String id;
  final String name;
  final String image;
  final String quote;     
  final String location;
  final String role;     

  Npc({
    required this.id,
    required this.name,
    required this.image,
    required this.quote,
    required this.location,
    required this.role,
  });

  factory Npc.fromJson(Map<String, dynamic> json) {
    return Npc(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      quote: json['quote'] as String,
      location: json['location'] as String,
      role: json['role'] as String,
    );
  }

  @override
  String toString() {
    return 'Npc{name: $name, role: $role}';
  }
}