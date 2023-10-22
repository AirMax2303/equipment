import 'package:equipment/widgets/text_extension.dart';
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
            const SizedBox(height: 16),
            const Text('Вы действительно хотите').style14w700(),
            const Text(' удалить данное оборудование ?').style14w700(),
            const SizedBox(height: 20),
            AppFilledButton('Удалить', onPressed: () {
              Navigator.pop(context, true);
            }),
            TextButton(
              child: const Text('Отменить').style12w300(),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    ),
  );
}
