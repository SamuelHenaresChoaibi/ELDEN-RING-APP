import 'package:elden_ring_app/models/modelos.dart';

class ArmorResponse {
  final bool success;
  final int count;
  final List<Armor> data;

  ArmorResponse({
    required this.success,
    required this.count,
    required this.data,
  });

  factory ArmorResponse.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<Armor> armors = dataList.map((item) => Armor.fromJson(item)).toList();

    return ArmorResponse(
      success: json['success'] as bool,
      count: json['count'] as int,
      data: armors,
    );
  }
}