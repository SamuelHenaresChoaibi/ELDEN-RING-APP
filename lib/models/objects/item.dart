class Item {
  final String id;
  final String name;
  final String image;
  final String description;
  final String type;    
  final String effect;

  Item({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.type,
    required this.effect,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      effect: json['effect'] as String,
    );
  }

  @override
  String toString() {
    return 'Item{name: $name, type: $type}';
  }
}