extension DateTimeExtension on DateTime {
  String apiFormatted() => toUtc().toIso8601String();
}
