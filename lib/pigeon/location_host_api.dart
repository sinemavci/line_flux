import 'package:pigeon/pigeon.dart';

@HostApi()
abstract class LocationHostApi {
  void start(String dataSource);

  void stop();

  String? getStatus(String dataSourceId);
  //
  // void on(String viewKey, String dataSourceId, String eventName, String eventId);
  //
  // void off(String viewKey, String dataSourceId, String eventId);
}