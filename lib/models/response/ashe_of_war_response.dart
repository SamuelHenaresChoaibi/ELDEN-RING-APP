import 'package:elden_ring_app/models/modelos.dart';

class AshOfWarResponse {
  final bool success;
  final int count;
  final List<AshOfWar> data;

  AshOfWarResponse({
    required this.success,
    required this.count,
    required this.data,
  });

  factory AshOfWarResponse.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<AshOfWar> ashes = dataList
        .map((item) => AshOfWar.fromJson(item))
        .toList();

    return AshOfWarResponse(
      success: json['success'] as bool,
      count: json['count'] as int,
      data: ashes,
    );
  }
}