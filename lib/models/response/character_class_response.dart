import 'package:elden_ring_app/models/modelos.dart';

class CharacterClassesResponse {
  final bool success;
  final int count;
  final List<CharacterClass> data;

  CharacterClassesResponse({
    required this.success,
    required this.count,
    required this.data,
  });

  factory CharacterClassesResponse.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<CharacterClass> classes = dataList
        .map((item) => CharacterClass.fromJson(item))
        .toList();

    return CharacterClassesResponse(
      success: json['success'] as bool,
      count: json['count'] as int,
      data: classes,
    );
  }
}