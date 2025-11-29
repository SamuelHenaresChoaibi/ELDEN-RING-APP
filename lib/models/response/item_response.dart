import 'package:elden_ring_app/models/modelos.dart';

class ItemsResponse {
  final bool success;
  final int count;
  final List<Item> data;

  ItemsResponse({
    required this.success,
    required this.count,
    required this.data,
  });

  factory ItemsResponse.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<Item> items = dataList
        .map((item) => Item.fromJson(item))
        .toList();

    return ItemsResponse(
      success: json['success'] as bool,
      count: json['count'] as int,
      data: items,
    );
  }
}