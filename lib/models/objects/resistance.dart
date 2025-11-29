class Resistance {
  final String name;
  final int amount;

  Resistance({required this.name, required this.amount});

  factory Resistance.fromJson(Map<String, dynamic> json) {
    return Resistance(
      name: json['name'] as String,
      amount: json['amount'] as int,
    );
  }
}