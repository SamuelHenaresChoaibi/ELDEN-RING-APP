import 'package:elden_ring_app/models/modelos.dart';

class TalismansResponse {
  final bool success;
  final int count;
  final List<Talisman> data;

  TalismansResponse({
    required this.success,
    required this.count,
    required this.data,
  });

  factory TalismansResponse.fromJson(Map<String, dynamic> json) {
    var list = json['data'] as List;
    return TalismansResponse(
      success: json['success'] as bool,
      count: json['count'] as int,
      data: list.map((e) => Talisman.fromJson(e)).toList(),
    );
  }
}