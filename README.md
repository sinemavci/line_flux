# line_flux

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

flutter pub run pigeon \
--input lib/pigeon/location_host_api.dart \
--dart_out lib/pigeon/location_host_api.g.dart \
--kotlin_out android/app/src/main/kotlin/com/line_flux/line_flux/LocationModulePigeon.kt --kotlin_package "com.line_flux.line_flux.location"

