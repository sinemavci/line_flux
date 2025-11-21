import 'package:pigeon/pigeon.dart';

@HostApi()
abstract class PermissionHostApi {
  @async
  bool requestLocationPermission();

  @async
  bool hasLocationPermission();
}