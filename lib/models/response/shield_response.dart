import 'package:elden_ring_app/models/modelos.dart';

class ShieldsResponse {
  final bool success;
  final int count;
  final List<Shield> data;

  ShieldsResponse({
    required this.success,
    required this.count,
    required this.data,
  });

  factory ShieldsResponse.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<Shield> shields = dataList.map((item) => Shield.fromJson(item)).toList();

    return ShieldsResponse(
      success: json['success'] as bool,
      count: json['count'] as int,
      data: shields,
    );
  }
}