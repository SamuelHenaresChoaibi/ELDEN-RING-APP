import 'package:elden_ring_app/models/modelos.dart';

class AmmoResponse {
  final bool success;
  final int count;
  final List<Ammo> data;

  AmmoResponse({
    required this.success,
    required this.count,
    required this.data,
  });

  factory AmmoResponse.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<Ammo> ammoList = dataList.map((item) => Ammo.fromJson(item)).toList();

    return AmmoResponse(
      success: json['success'] as bool,
      count: json['count'] as int,
      data: ammoList,
    );
  }
}