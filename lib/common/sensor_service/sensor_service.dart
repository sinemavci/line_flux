import 'package:line_flux/common/hooks/sensor_service_hook.dart';
import 'package:line_flux/common/model/location/location_data_source.dart';

class SensorService {
  final _sensorServiceHook = SensorServiceHook();

  Future<void> start({required LocationDataSource dataSource}) async {
    await _sensorServiceHook.start(dataSource: dataSource);
  }

  Future<void> stop({required LocationDataSource dataSource}) async {
    await _sensorServiceHook.stop(dataSource: dataSource);
  }
}