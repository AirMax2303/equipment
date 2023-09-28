import 'package:equipment/widgets/widgets.dart';
import 'package:flutter/material.dart';

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
              AppSixeBox.size20,
              CalendarApp(
                onChangeDate: (value) {
                  date = value;
                },
              ),
              AppSixeBox.size16,
              AppButton.filledBlackButton('Сохранить', onPressed: () {
                Navigator.pop(context, date);
              }),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: AppText.blackText12('Отменить')),
            ],
          ),
        ),
      ),
    ),
  );
}
