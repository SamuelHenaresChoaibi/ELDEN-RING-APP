class Scaling {
  final String name;     
  final String scaling; 

  Scaling({required this.name, required this.scaling});

  factory Scaling.fromJson(Map<String, dynamic> json) => Scaling(
        name: json['name'] as String,
        scaling: json['scaling'] as String? ?? '',
      );
}