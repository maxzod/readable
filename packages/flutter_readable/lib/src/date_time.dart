import 'package:flutter/material.dart';

extension RDateTimeF on DateTime {
  /// * convert DateTime to TimeOfDay .
  TimeOfDay toTimeOfDay() => TimeOfDay.fromDateTime(this);
}
