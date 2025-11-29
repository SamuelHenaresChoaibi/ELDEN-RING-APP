import 'package:elden_ring_app/models/modelos.dart';

class SpiritsResponse {
  final bool success;
  final int count;
  final List<Spirit> data;

  SpiritsResponse({
    required this.success,
    required this.count,
    required this.data,
  });

  factory SpiritsResponse.fromJson(Map<String, dynamic> json) {
    var list = json['data'] as List;
    return SpiritsResponse(
      success: json['success'] as bool,
      count: json['count'] as int,
      data: list.map((e) => Spirit.fromJson(e)).toList(),
    );
  }
}