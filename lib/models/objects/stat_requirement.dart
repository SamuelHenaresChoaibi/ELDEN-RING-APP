class StatRequirement {
  final String name;
  final int amount;

  StatRequirement({required this.name, required this.amount});

  factory StatRequirement.fromJson(Map<String, dynamic> json) {
    return StatRequirement(
      name: json['name'] as String,
      amount: json['amount'] as int,
    );
  }
}