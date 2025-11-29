class DamageNegation {
  final String name; 
  final double amount;

  DamageNegation({required this.name, required this.amount});

  factory DamageNegation.fromJson(Map<String, dynamic> json) {
    return DamageNegation(
      name: json['name'] as String,
      amount: (json['amount'] is int)
          ? (json['amount'] as int).toDouble()
          : json['amount'] as double,
    );
  }
}