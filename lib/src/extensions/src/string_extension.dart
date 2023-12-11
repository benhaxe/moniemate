import 'package:intl/intl.dart';

extension StringExtension on String {
  String get userState {
    try {
      if (isNotEmpty) {
        final List<String> value = split(",");
        return value.first;
      }
      return '';
    } catch (_) {
      return '';
    }
  }

  String get formatedArrivalDate {
    final date = DateTime.tryParse(this) ?? DateTime.now();
    return DateFormat("MMM dd,yyyy").format(date);
  }

  String get arrivalDay {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(now.year, now.month, now.day - 1);
    final tomorrow = DateTime(now.year, now.month, now.day + 1);

    final dateToCheck = DateTime.tryParse(this) ?? DateTime.now();

    final aDate = DateTime(
      dateToCheck.year,
      dateToCheck.month,
      dateToCheck.day,
    );

    if (aDate == today) {
      return 'Arriving Today!';
    } else if (aDate == yesterday) {
      return 'Arrived Yesterday!';
    } else if (aDate == tomorrow) {
      return 'Arriving Tomorrow!';
    } else {
      return 'Arrived';
    }
  }
}
