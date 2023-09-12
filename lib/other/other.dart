String status(String status) {
  switch (status) {
    case '1':
      return 'assets/status1.svg';
    case '2':
      return 'assets/status2.svg';
    case '3':
      return 'assets/status3.svg';
    default:
      return 'assets/status0.svg';
  }
}

String dateFormat(DateTime date) {
  return '${date.day}.${date.month}.${date.year}';
}

extension MyDateTime on DateTime {
  DateTime nextDay() => add(const Duration(days: 1));

  DateTime prevDay() => add(const Duration(days: -1));

  DateTime nextMonth() => month != 11 ? add(const Duration(days: 30)) : DateTime(year + 1, 1, day);

  DateTime prevMonth() => month == 1 ? DateTime(year - 1, 12, day) : add(const Duration(days: -30));
}

String spKey = 'profile';

String username = 'eq092023@mail.ru';
String password = 'uGXQH6Htf17jafpuxedA';
