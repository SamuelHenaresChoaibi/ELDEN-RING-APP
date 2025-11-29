import 'package:elden_ring_app/models/modelos.dart';

class WeaponsResponse {
  final bool success;
  final int count;
  final List<Weapon> data;

  WeaponsResponse({required this.success, required this.count, required this.data});

  factory WeaponsResponse.fromJson(Map<String, dynamic> json) {
    var list = json['data'] as List;
    return WeaponsResponse(
      success: json['success'] as bool,
      count: json['count'] as int,
      data: list.map((e) => Weapon.fromJson(e)).toList(),
    );
  }
}