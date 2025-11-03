import 'package:uuid/uuid.dart';

class LocationDataSource {
  String id = const Uuid().v4();
  //todo

  // final _locationHook = LocationHook();
  //
  // final _locationObserver = LocationObserver();

  Future<void> start() async {
   // await _locationHook.start(datasource: this);
  }

  Future<void> stop() async {
 //  await _locationHook.stop(datasource: this);
  }

  // Future<LocationDatasourceStatus> getStatus() async {
  //   //return await _locationHook.getStatus(datasource: this);
  // }

  // Future<void> on({
  //   required LocationEventAllowedType eventName,
  //   required ObserverCallback<LocationEventResponse> callback,
  // }) async {
  //   try {
  //     final eventId = _locationObserver.on(event: eventName, callback: callback);
  //     await _locationHook.on(dataSourceId: id, eventName: eventName, eventId: eventId);
  //   }
  //   catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<void> off<T extends LocationEventAllowedType>({
  //   required T eventName,
  //   required ObserverCallback<LocationEventResponse> callback,
  // }) async {
  //   try {
  //     final eventId = _locationObserver.off(event: eventName, callback: callback);
  //     if (eventId != null) {
  //       await _locationHook.off(dataSourceId: id, eventId: eventId);
  //     }
  //   }
  //   catch (e) {
  //     rethrow;
  //   }
  // }
}
