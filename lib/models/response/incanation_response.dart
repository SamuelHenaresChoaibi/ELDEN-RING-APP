import 'package:elden_ring_app/models/modelos.dart';

class IncantationsResponse {
  final bool success;
  final int count;
  final List<Incantation> data;

  IncantationsResponse({
    required this.success,
    required this.count,
    required this.data,
  });

  factory IncantationsResponse.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<Incantation> incantations = dataList
        .map((item) => Incantation.fromJson(item))
        .toList();

    return IncantationsResponse(
      success: json['success'] as bool,
      count: json['count'] as int,
      data: incantations,
    );
  }
}