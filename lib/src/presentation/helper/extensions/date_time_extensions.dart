import 'package:chat_app/src/presentation/constants/common/date.dart';
import 'package:chat_app/src/presentation/helper/extensions/number_extensions.dart';

extension DateTimeExtensions on DateTime {
  String get differenceTime {
    int days = DateTime.now().difference(this).inDays;
    if (days == 0) {
      return clockFormat;
    } else if (days < 7) {
      return gregorianDays[weekday - 1];
    }
    return "${gregoriaMonths[month - 1]} ${day.timeFormat}";
  }

  String get clockFormat {
    return "${hour.timeFormat}:${minute.timeFormat}";
  }
}
