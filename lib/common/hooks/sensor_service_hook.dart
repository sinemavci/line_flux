import 'dart:convert';

import 'package:line_flux/common/dto/sensor/sensor_dto.dart';
import 'package:line_flux/common/model/location/sensor.dart';
import 'package:line_flux/pigeon/sensor_host_api.g.dart';

class SensorServiceHook {
  final _hostApi = SensorHostApi();

  Future<void> start({required Sensor sensor}) async {
    final jsonResponse = jsonEncode(SensorDTO.fromDataModel(sensor).toJson());
    try {
      await _hostApi.start(jsonResponse);
     await _hostApi.on(jsonResponse);
    }
    catch(e, stace) {
      throw 'exception: ${e} ${stace}';
    }
  }

  Future<void> stop() async {
    try {
      await _hostApi.stop();
    }
    catch(e, stace) {
      throw 'exception: ${e} ${stace}';
    }
  }
}