import 'package:equipment/other/other.dart';
import 'package:equipment/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'calendar.dart';

Dialog dialogCalendar(BuildContext context) {
  DateTime date = DateTime.now();
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
    insetPadding: const EdgeInsets.all(20),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              CalendarApp(
                onChangeDate: (value) {
                  date = DateTime(value.year, value.month, value.day);
                },
              ),
              const SizedBox(height: 16),
              AppButton.filledBlackButton('Сохранить', onPressed: () {
                Navigator.pop(context, date);
              }),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context, null);
                  },
                  child: const Text('Отменить').style13w500()),
            ],
          ),
        ),
      ),
    ),
  );
}

Dialog dialogDateChanged(BuildContext context, String date) {
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    insetPadding: const EdgeInsets.all(20),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset('assets/Frame 520.svg'),
            const SizedBox(height: 16),
            const Text('Работа перенесена на').style14w700(),
            AppText.blackText16(date),
            const SizedBox(height: 16),
            AppButton.filledBlackButton('OK', onPressed: () {
              Navigator.pop(context);
            }),
            const SizedBox(height: 16),
          ],
        ),
      ),
    ),
  );
}

Dialog dialogInDeveloping(BuildContext context) {
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    insetPadding: const EdgeInsets.all(20),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 16),
            SvgPicture.asset('assets/indeveloping.svg'),
            const SizedBox(height: 16),
            const Text('Находится').style18w700(),
            const Text('в разработке').style18w700(),
            const SizedBox(height: 16),
            AppButton.filledBlackButton('OK', onPressed: () {
              Navigator.pop(context);
            }),
            const SizedBox(height: 16)
          ],
        ),
      ),
    ),
  );
}

Dialog dialogWorkIsDone(BuildContext context, bool deleted, String text1, String text2) {
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    insetPadding: const EdgeInsets.all(20),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            deleted ? SvgPicture.asset('assets/deleted.svg') : SvgPicture.asset('assets/done.svg'),
            const SizedBox(height: 16),
            Text(text1).style14w700(),
            Text(text2).style14w700(),
            const SizedBox(height: 16),
            AppButton.filledBlackButton('OK', onPressed: () {
              Navigator.pop(context, true);
            }),
            const SizedBox(height: 16)
          ],
        ),
      ),
    ),
  );
}

Dialog dialogConfirmDelete(BuildContext context, String text1, String text2) {
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    insetPadding: const EdgeInsets.all(20),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset('assets/delete_big.svg'),
            const SizedBox(height: 16),
            Text(text1).style14w700(),
            Text(text2).style14w700(),
            const SizedBox(height: 16),
            AppButton.filledBlackButton('OK', onPressed: () {
              Navigator.pop(context, true);
            }),
            AppButton.textButton('Отмена', onPressed: () {
              Navigator.pop(context);
            }),
          ],
        ),
      ),
    ),
  );
}
