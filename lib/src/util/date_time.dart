import 'package:json_annotation/json_annotation.dart';

extension DateTimeExtension on DateTime {
  String apiFormatted() => toUtc().toIso8601String();
}

class ISO8601DateTimeConverter implements JsonConverter<DateTime, String> {
  const ISO8601DateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime object) => object.toIso8601String();
}
