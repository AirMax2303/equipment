import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/widgets.dart';

Dialog dialogDeleteConfirm(BuildContext context) {
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
            AppSixeBox.size16,
            AppText.blackText14('Вы действительно хотите'),
            AppText.blackText14(' удалить данное оборудование ?'),
            AppSixeBox.size20,
            AppButton.filledBlackButton('Удалить', onPressed: () {
              Navigator.pop(context, 'delete');
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
