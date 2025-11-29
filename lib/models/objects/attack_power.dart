class AttackPower {
  final String name; 
  final int amount;

  AttackPower({
    required this.name,
    required this.amount,
  });

  factory AttackPower.fromJson(Map<String, dynamic> json) {
    return AttackPower(
      name: json['name'] as String,
      amount: json['amount'] as int,
    );
  }
}