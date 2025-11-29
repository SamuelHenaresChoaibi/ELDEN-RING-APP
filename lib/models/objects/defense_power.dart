class DefensePower {
  final String name; 
  final int amount;

  DefensePower({required this.name, required this.amount});

  factory DefensePower.fromJson(Map<String, dynamic> json) {
    return DefensePower(
      name: json['name'] as String,
      amount: json['amount'] as int,
    );
  }
}