import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/widgets.dart';

Dialog dialogMain2(BuildContext context) {
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
            SvgPicture.asset('assets/big_work.svg'),
            AppSixeBox.size16,
            const Text('Работа', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),),
            const Text('выполнена', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),),
            AppSixeBox.size16,
            AppButton.filledBlackButton('OK', onPressed: () {
              Navigator.pop(context, true);

            }),
            AppSixeBox.size16,
          ],
        ),
      ),
    ),
  );
}