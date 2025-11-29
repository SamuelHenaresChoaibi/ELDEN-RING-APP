class RequiredAttribute {
  final String name;
  final int amount;

  RequiredAttribute({required this.name, required this.amount});

  factory RequiredAttribute.fromJson(Map<String, dynamic> json) => RequiredAttribute(
        name: json['name'] as String,
        amount: json['amount'] as int,
      );
}