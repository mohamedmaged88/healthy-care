import 'package:intl/intl.dart';

class CustomFormatDate {
  static String formatDateMonth = DateFormat("MMMM").format(DateTime.now());
  static String formatDateDay = DateFormat("d").format(DateTime.now());
  static String formatDateDayName = DateFormat("EEEE").format(DateTime.now());
  static String formatDateYear = DateFormat("yyyy").format(DateTime.now());
}
