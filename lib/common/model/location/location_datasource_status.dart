/// The list of possible LocationDataSource statuses. This is used to determine the status of a LocationDataSource.
enum LocationDatasourceStatus {
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

  const LocationDatasourceStatus(this.identifier);

  factory LocationDatasourceStatus.fromIdentifier(String? identifier) {
    return LocationDatasourceStatus.values.firstWhere(
          (element) => element.identifier == identifier,
      orElse: () => LocationDatasourceStatus.init,
    );
  }
}
