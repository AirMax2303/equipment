import 'package:equipment/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Dialog dialogOkRegister(BuildContext context, String info, String error) {
  return Dialog(
    backgroundColor: const Color(0xFF2F2E41),
    insetPadding: const EdgeInsets.all(20),
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppSixeBox.size20,
          SvgPicture.asset('assets/logo.svg'),
          AppSixeBox.size20,
          AppText.whiteText16(info),
          AppSixeBox.size20,
          AppText.whiteText16(error),
          AppSixeBox.size20,
          AppButton.filledInputButton('Продолжить', onPressed: () {
            Navigator.pop(context, 'Ok');
          }),
          AppSixeBox.size20,
        ],
      ),
    ),
  );
}
