import 'package:elden_ring_app/models/modelos.dart';

class NpcsResponse {
  final bool success;
  final int count;
  final List<Npc> data;

  NpcsResponse({
    required this.success,
    required this.count,
    required this.data,
  });

  factory NpcsResponse.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<Npc> npcs = dataList.map((item) => Npc.fromJson(item)).toList();

    return NpcsResponse(
      success: json['success'] as bool,
      count: json['count'] as int,
      data: npcs,
    );
  }
}