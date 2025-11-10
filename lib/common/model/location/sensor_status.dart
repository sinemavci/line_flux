/// The list of possible LocationDataSource statuses. This is used to determine the status of a LocationDataSource.
enum SensorStatus {
  /// LocationDataSource not yet start.
  init('INIT'),

  /// LocationDataSource started.
  started('STARTED'),

  /// LocationDataSource stopped.
  stopped('STOPPED'),

  /// LocationDataSource failed to start.
  failedToStart('FAILED_TO_START'),

  /// LocationDataSource failed to start because of no permission.
  permissionNotFound('PERMISSION_NOT_FOUND');

  final String identifier;

  const SensorStatus(this.identifier);

  factory SensorStatus.fromIdentifier(String? identifier) {
    return SensorStatus.values.firstWhere(
          (element) => element.identifier == identifier,
      orElse: () => SensorStatus.init,
    );
  }
}
