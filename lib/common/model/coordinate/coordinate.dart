class Coordinate {
  final double latitude;

  final double longitude;

  final double altitude;

  Coordinate({
    double? latitude,
    double? longitude,
    double? altitude,
  })
      : latitude = latitude ?? 0.0,
        longitude = longitude ?? 0.0,
        altitude = altitude ?? 0.0;

  /// Converts JSON to [Coordinate].
  factory Coordinate.fromJson(Map<String, dynamic> json) {
    return Coordinate(
      latitude: json["latitude"],
      longitude: json["longitude"],
      altitude: json["altitude"],
    );
  }
}
