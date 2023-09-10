import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../other/other.dart';
import '../widgets/calendar.dart';
import '../widgets/widgets.dart';
import 'models/work.dart';

Dialog dialogPrioritet(BuildContext context, WorkModel data) {
  DateTime date = DateTime.now();
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
        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/type1.svg'),
              Text(
                data.type!,
                maxLines: 3,
                style: const TextStyle(color: Color(0xFF666666), fontSize: 12, fontWeight: FontWeight.w700),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context, 'back');
                  },
                  icon: SvgPicture.asset(
                    'assets/close.svg',
                  )),
            ],
          ),
          Text(
            data.name1!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            data.name2!,
            style: const TextStyle(color: Color(0xFF8D8D92), fontSize: 12, fontWeight: FontWeight.w400),
          ),
          AppSixeBox.size10,
          const Divider(
            height: 2,
          ),
          AppSixeBox.size10,
          Row(
            children: [
              SvgPicture.asset('assets/oval1.svg'),
              const SizedBox(width: 5),
              Text(
                data.work!,
                maxLines: 3,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          AppSixeBox.size16,
          AppButton.filledBlackButton('Выполнить', onPressed: () {
            Navigator.pop(context, 'execute');
          }),
          AppSixeBox.size16,
          const Divider(
            thickness: 2,
          ),
          Center(
            child: AppText.blackText12('Перенести работу'),
          ),
          AppSixeBox.size16,
          CalendarApp(
            onChangeDate: (value) {
              date = value;
            },
          ),
          AppSixeBox.size16,

          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context, dateFormat(date));
                },
                child: const Text(
                  'Перенести работу',
                  style: TextStyle(color: Colors.black),
                )),
          ),
          AppSixeBox.size16,
        ]),
      ),
    ),
  );
}

Dialog dialogInfo(BuildContext context, String date) {
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
            AppSixeBox.size16,
            AppText.blackText16('Работа перенесена на'),
            AppText.blackText16(date),
            AppSixeBox.size16,
            AppButton.filledBlackButton('OK', onPressed: () {
              Navigator.pop(context, 'back');
            }),
            AppSixeBox.size16,
          ],
        ),
      ),
    ),
  );
}

Dialog dialogNapominanie(BuildContext context, WorkModel data) {
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    insetPadding: const EdgeInsets.all(20),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/type2.svg'),
              Text(
                data.type!,
                style: const TextStyle(color: Color(0xFF666666), fontSize: 12, fontWeight: FontWeight.w700),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context, 'back');
                  },
                  icon: SvgPicture.asset(
                    'assets/close.svg',
                  )),
            ],
          ),
          Text(
            data.name1!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            data.name2!,
            style: const TextStyle(color: Color(0xFF8D8D92), fontSize: 12, fontWeight: FontWeight.w400),
          ),
          AppSixeBox.size16,
          const Divider(
            height: 2,
          ),
          AppSixeBox.size16,
          Row(
            children: [
              SvgPicture.asset('assets/oval1.svg'),
              const SizedBox(width: 5),
              Text(
                data.work!,
                maxLines: 2,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          AppSixeBox.size16,
          AppButton.filledBlackButton('Перейти к работе', onPressed: () {
            Navigator.pop(context, 'execute');
          }),
        ]),
      ),
    ),
  );
}

Dialog dialogOrder(BuildContext context, WorkModel data) {
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    insetPadding: const EdgeInsets.all(20),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/type3.svg'),
              Text(
                data.type!,
                style: const TextStyle(color: Color(0xFF666666), fontSize: 12, fontWeight: FontWeight.w700),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context, 'back');
                  },
                  icon: SvgPicture.asset(
                    'assets/close.svg',
                  )),
            ],
          ),
          Text(
            data.name1!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            data.name2!,
            style: const TextStyle(color: Color(0xFF8D8D92), fontSize: 12, fontWeight: FontWeight.w400),
          ),
          AppSixeBox.size16,
          const Divider(
            height: 2,
          ),
          AppSixeBox.size16,
          Row(
            children: [
              SvgPicture.asset('assets/oval1.svg'),
              const SizedBox(width: 5),
              Text(
                data.work!,
                maxLines: 2,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          AppSixeBox.size16,
          AppButton.filledBlackButton('Выполнить', onPressed: () {
            Navigator.pop(context, 'execute');
          }),
        ]),
      ),
    ),
  );
}


Dialog dialogCalendar(BuildContext context, WorkModel data) {
  DateTime date = DateTime.now();
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
            AppSixeBox.size20,
            CalendarApp(
              onChangeDate: (value) {
                date = value;
              },
            ),
            AppButton.filledBlackButton('Сохранить', onPressed: () {
              Navigator.pop(context, date);
            }),
            TextButton(
                onPressed: () {
                  Navigator.pop(context, 'back');
                },
                child: AppText.blackText12('Отменить')),
            AppSixeBox.size16,
          ],
        ),
      ),
    ),
  );
}

