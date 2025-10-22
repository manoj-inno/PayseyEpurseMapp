import 'package:intl/intl.dart';

String formatDate(String dateInput) {
  try {
    String firstDate = dateInput.split('|').first.trim();

    List<String> formats = [
      'dd/MM/yyyy',
      'dd-MM-yyyy',
      'MM/dd/yyyy',
      'MM-dd-yyyy',
      'yyyy/MM/dd',
      'yyyy-MM-dd',
    ];

    DateTime? parsedDate;

    for (String format in formats) {
      try {
        parsedDate = DateFormat(format).parseStrict(firstDate);
        break;
      } catch (_) {}
    }

    if (parsedDate == null) {
      throw const FormatException('Date format not recognized');
    }
    return DateFormat('dd-MM-yyyy').format(parsedDate);
  } catch (e) {
    return '';
  }
}
