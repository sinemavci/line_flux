import 'dart:convert';

import 'package:line_flux/common/dto/location/location_datasource_dto.dart';
import 'package:line_flux/common/model/location/location_data_source.dart';
import 'package:line_flux/pigeon/location_host_api.g.dart';

class SensorServiceHook {
  final _hostApi = LocationHostApi();

  Future<void> start({required LocationDataSource dataSource}) async {
    final jsonResponse = jsonEncode(LocationDataSourceDTO.fromDataModel(dataSource).toJson());
    try {
      await _hostApi.start(jsonResponse);
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