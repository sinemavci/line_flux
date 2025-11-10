package com.line_flux.line_flux.observers

import com.google.gson.Gson
import com.kotlin.sensor_drawing_plugin.coordinate.Location
import com.line_flux.line_flux.sensorEventHandler
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import com.line_flux.line_flux.dto.coordinate.LocationDTO

class SensorEventHandler(messenger: BinaryMessenger) : EventChannel.StreamHandler {
    private val eventChannel = EventChannel(messenger, "SensorListener")
    private var eventSink: EventChannel.EventSink? = null

    private var cachedEvent: Any? = null

    init {
        eventChannel.setStreamHandler(this)
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        eventSink = events
        if (cachedEvent != null) {
            eventSink?.success(cachedEvent)
            cachedEvent = null
        }
    }

    override fun onCancel(arguments: Any?) {
        eventSink = null
    }

    fun send(data: Any) {
        if (eventSink == null) {
            cachedEvent = data
        } else {
            eventSink?.success(data)
        }
    }
}


class SensorObserver {
    val gson = Gson()

//    private val listenerEvents = mutableMapOf<String, LocationEvent.Type>()

    fun on(eventName: String, eventId: String) {
//        val event = LocationEvent.Type.valueOf(eventName)
//        if (!listenerEvents.containsKey(eventId)) {
//            listenerEvents[eventId] = event
//        }
    }

    fun off(eventId: String) {
//        listenerEvents.remove(eventId)
    }

    fun onSensorChanged(location: Location) {

//        if (listenerEvents.any { item -> item.value == event.getEventType() }) {
        val sender = mutableMapOf(
            "Location" to LocationDTO.fromDataModel(location)
//                "EventName" to event.getEventType().name,
//                "DataSourceId" to event.getLocationDataSource().id,
//                "Value" to when (event.getEventType()) {
//                    LocationEvent.Type.LocationChanged -> LocationDTO.fromDataModel(event.getValue() as Location)
//                    LocationEvent.Type.StatusChanged -> LocationDataSourceStatus.valueOf(event.getValue() as String)
//                    LocationEvent.Type.HeadingChanged -> event.getValue() as Double
//                    LocationEvent.Type.DeviceHeadingChanged -> event.getValue() as Double
//                }
        )
        sensorEventHandler?.send(gson.toJson(sender))
//        }
    }
}

