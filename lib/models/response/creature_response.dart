import 'package:elden_ring_app/models/modelos.dart';

class CreaturesResponse {
  final bool success;
  final int count;
  final List<Creature> data;

  CreaturesResponse({
    required this.success,
    required this.count,
    required this.data,
  });

  factory CreaturesResponse.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<Creature> creatures = dataList
        .map((item) => Creature.fromJson(item))
        .toList();

    return CreaturesResponse(
      success: json['success'] as bool,
      count: json['count'] as int,
      data: creatures,
    );
  }
}