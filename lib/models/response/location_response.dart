import 'package:elden_ring_app/models/modelos.dart';

class LocationsResponse {
  final bool success;
  final int count;
  final List<Location> data;

  LocationsResponse({
    required this.success,
    required this.count,
    required this.data,
  });

  factory LocationsResponse.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<Location> locations = dataList
        .map((item) => Location.fromJson(item))
        .toList();

    return LocationsResponse(
      success: json['success'] as bool,
      count: json['count'] as int,
      data: locations,
    );
  }
}