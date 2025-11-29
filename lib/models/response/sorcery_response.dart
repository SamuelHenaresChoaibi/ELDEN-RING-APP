import 'package:elden_ring_app/models/modelos.dart';
class SorceriesResponse {
  final bool success;
  final int count;
  final List<Sorcery> data;

  SorceriesResponse({required this.success, required this.count, required this.data});

  factory SorceriesResponse.fromJson(Map<String, dynamic> json) {
    var list = json['data'] as List;
    return SorceriesResponse(
      success: json['success'] as bool,
      count: json['count'] as int,
      data: list.map((e) => Sorcery.fromJson(e)).toList(),
    );
  }
}