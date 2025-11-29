class CharacterClass {
  final String id;
  final String name;
  final String image;
  final String description;
  final ClassStats stats;

  CharacterClass({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.stats,
  });

  factory CharacterClass.fromJson(Map<String, dynamic> json) {
    return CharacterClass(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      stats: ClassStats.fromJson(json['stats'] as Map<String, dynamic>),
    );
  }

  @override
  String toString() {
    return 'CharacterClass{name: $name, level: ${stats.level}, strength: ${stats.strength}}';
  }
}

class ClassStats {
  final int level;
  final int vigor;
  final int mind;
  final int endurance;
  final int strength;
  final int dexterity;
  final int intelligence;  
  final int faith;
  final int arcane;

  ClassStats({
    required this.level,
    required this.vigor,
    required this.mind,
    required this.endurance,
    required this.strength,
    required this.dexterity,
    required this.intelligence,
    required this.faith,
    required this.arcane,
  });

  factory ClassStats.fromJson(Map<String, dynamic> json) {
    return ClassStats(
      level: int.parse(json['level'] as String),
      vigor: int.parse(json['vigor'] as String),
      mind: int.parse(json['mind'] as String),
      endurance: int.parse(json['endurance'] as String),
      strength: int.parse(json['strength'] as String),
      dexterity: int.parse(json['dexterity'] as String),
      // La API tiene un typo: "inteligence" en vez de "intelligence"
      intelligence: int.parse(json['inteligence'] as String? ?? json['intelligence'] as String? ?? '0'),
      faith: int.parse(json['faith'] as String),
      arcane: int.parse(json['arcane'] as String),
    );
  }
}