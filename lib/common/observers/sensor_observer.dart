import 'dart:async';

import 'package:flutter/services.dart';

class SensorObserver {
  static const EventChannel _eventChannel = EventChannel("SensorListener");
  static final StreamController<dynamic> _controller = StreamController
      .broadcast();

  SensorObserver() {
    _eventChannel.receiveBroadcastStream()
        .listen((data) {
      _controller.add(data);
    });

    _controller.stream.listen((data) {
      print("data: ${data}");
    });
  }
}