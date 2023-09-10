import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/widgets.dart';

Dialog dialogTimerOne(BuildContext context, String date) {
  final ValueNotifier<int> typeTimer = ValueNotifier<int>(0);
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
          Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('assets/timer.svg'),
            AppText.blackText14('Настройка таймера'),
            IconButton(icon: SvgPicture.asset('assets/close.svg'), onPressed: () {})
          ],
        ),
        AppSixeBox.size16,

        AppText.blackText16('Повторять каждый'),
        AppSixeBox.size5,
        ValueListenableBuilder(
          valueListenable: typeTimer,
          builder: (BuildContext context, value, Widget? child) {
            return Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TimerButton(text: 'День', fill: value == 0, onPressed: () {typeTimer.value = 0;},),
                TimerButton(text: 'Неделя', fill: value == 1, onPressed: () {typeTimer.value = 1;},),
                TimerButton(text: 'Месяц', fill: value == 2, onPressed: () {typeTimer.value = 2;},),
              ],
            );
          }),
          AppSixeBox.size16,
          AppText.blackText16('Интервал'),


          AppText.blackText16('Работа перенесена на'),
          AppText.blackText16(date),
          AppSixeBox.size16,
          AppButton.filledBlackButton('Сохранить', onPressed: () {
            Navigator.pop(context);
          }),
          AppSixeBox.size16,
          ],
        ),
      ),
    ),
  );
}



class TimerButton extends StatelessWidget {
  TimerButton({Key? key, required this.text, required this.fill, required this.onPressed}) : super(key: key);
  final String text;
  final bool fill;
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width/4,
      height: 40,
      child: FilledButton(
        onPressed: () {
        },
        style: AppButtonStyle.stdButtonStyle(color: fill ? AppColor.blueColor : AppColor.lightBlueColor),
        child: Text(
          text,
          style: fill
              ? const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700)
              : const TextStyle(color: AppColor.blueColor, fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
