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

String spKey = 'profile';

String username = 'eq092023@mail.ru';
String password = 'uGXQH6Htf17jafpuxedA';
