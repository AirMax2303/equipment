import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../other/other.dart';
import '../widgets/dialog.dart';
import '../widgets/widgets.dart';
import 'models/main_chapter.dart';

Dialog dialogPrioritet(BuildContext context, MainChapterData data) {
  return Dialog(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
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
              Text(typeWorks(data.work), maxLines: 3).style12w700(color: const Color(0xFF666666)),
              IconButton(
                  icon: SvgPicture.asset('assets/close.svg'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
          Text(data.equipment!.name1!).style16w400(),
          Text(data.equipment!.name2!).style12w400(),
          const SizedBox(height: 10),
          const Divider(height: 2),
          const SizedBox(height: 10),
          Row(
            children: [
              SvgPicture.asset('assets/oval1.svg'),
              const SizedBox(width: 5),
              Text(typeWorks(data.work), maxLines: 3).style14w700(),
            ],
          ),
          const SizedBox(height: 16),
          AppButton.filledBlackButton('Выполнить', onPressed: () {
            Navigator.pop(context, left<bool, DateTime>(true));
          }),
          const SizedBox(height: 16),
          TextButton(
              child: const Text('Перенести работу').style12w300(),
              onPressed: () {
                showDialog<DateTime>(
                    context: context,
                    builder: (BuildContext context) {
                      return dialogCalendar(context);
                    }).then((value) {
                  Navigator.pop(context, right<bool, DateTime>(value!));
                });
              }),
          const SizedBox(height: 16),
        ]),
      ),
    ),
  );
}

Dialog dialogOrder(BuildContext context, MainChapterData data) {
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
              Text(typeWorks(data.work)).style12w700(color: const Color(0xFF666666)),
              IconButton(
                  icon: SvgPicture.asset('assets/close.svg'),
                  onPressed: () {
                    Navigator.pop(context, false);
                  }),
            ],
          ),
          Text(data.equipment!.name1!).style16w400(),
          Text(data.equipment!.name2!).style12w400(color: const Color(0xFF8D8D92)),
          const SizedBox(height: 16),
          const Divider(height: 2),
          const SizedBox(height: 16),
          Row(
            children: [
              SvgPicture.asset('assets/oval1.svg'),
              const SizedBox(width: 5),
              Text(typeWorks(data.work), maxLines: 2).style14w700(),
            ],
          ),
          const SizedBox(height: 16),
          AppButton.filledBlackButton('Выполнить', onPressed: () {
            Navigator.pop(context, true);
          }),
        ]),
      ),
    ),
  );
}

Dialog dialogNapominanie(BuildContext context, MainChapterData data) {
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
              Text(typeWorks(data.work)).style12w700(color: const Color(0xFF666666)),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context, 'back');
                  },
                  icon: SvgPicture.asset('assets/close.svg')),
            ],
          ),
          Text(data.equipment!.name1!).style16w400(),
          Text(data.equipment!.name2!).style12w400(color: const Color(0xFF8D8D92)),
          const SizedBox(height: 16),
          const Divider(
            height: 2,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              SvgPicture.asset('assets/oval1.svg'),
              const SizedBox(width: 5),
              Text(typeWorks(data.work), maxLines: 2).style14w700(),
            ],
          ),
          const SizedBox(height: 16),
          AppButton.filledBlackButton('Перейти к работе', onPressed: () {
            Navigator.pop(context, 'execute');
          }),
        ]),
      ),
    ),
  );
}
