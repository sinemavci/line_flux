import 'package:flutter/services.dart';
import 'package:line_flux/pigeon/permission_host_api.g.dart';

class PermissionServiceHook {
  final _hostApi = PermissionHostApi();

  Future<bool> hasLocationPermission() async {
    try {
      return await _hostApi.hasLocationPermission();
    } on PlatformException catch (e) {
      throw e;
    }
  }

  Future<bool> requestLocationPermission() async {
    try {
      return await _hostApi.requestLocationPermission();
    } on PlatformException catch (e) {
      throw e;
    }
  }
}