import 'package:line_flux/common/hooks/sensor_service_hook.dart';
import 'package:line_flux/common/model/location/sensor.dart';

class SensorService {
  final _sensorServiceHook = SensorServiceHook();

  Future<void> start({required Sensor sensor}) async {
    await _sensorServiceHook.start(sensor: sensor);
  }

  Future<void> stop() async {
    await _sensorServiceHook.stop();
  }
}