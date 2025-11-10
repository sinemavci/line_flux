import 'package:pigeon/pigeon.dart';

@HostApi()
abstract class SensorHostApi {
  void start(String sensor);

  void stop();

  void on(String sensor);

  String? getStatus(String sensorId);
  //
  // void on(String viewKey, String dataSourceId, String eventName, String eventId);
  //
  // void off(String viewKey, String dataSourceId, String eventId);
}