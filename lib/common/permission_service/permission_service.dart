import 'package:line_flux/common/hooks/permission_service_hook.dart';

class PermissionService {
  final _permissionHandler = PermissionServiceHook();

  Future<bool> hasLocationPermission() async {
    return await _permissionHandler.hasLocationPermission();
  }

  Future<bool> requestLocationPermission() async {
    return await _permissionHandler.requestLocationPermission();
  }
}