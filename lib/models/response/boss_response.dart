import 'package:elden_ring_app/models/modelos.dart';

class BossResponse {
  final bool success;
  final int count;
  final List<Boss> data;

  BossResponse({
    required this.success,
    required this.count,
    required this.data,
  });

  factory BossResponse.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<Boss> bosses = dataList.map((item) => Boss.fromJson(item)).toList();

    return BossResponse(
      success: json['success'] as bool,
      count: json['count'] as int,
      data: bosses,
    );
  }
}