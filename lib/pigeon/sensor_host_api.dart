import 'package:pigeon/pigeon.dart';

@HostApi()
abstract class SensorHostApi {
  @async
  bool start(String sensor);

  @async
  bool stop();

  @async
  bool on(String sensor);

  @async
  String getStatus(String sensorId);
  //
  // void on(String viewKey, String dataSourceId, String eventName, String eventId);
  //
  // void off(String viewKey, String dataSourceId, String eventId);
}