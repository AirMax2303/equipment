import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/appbar.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';

class _Ppr10Screen extends StatelessWidget {
  const _Ppr10Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.equip),
      appBar: appBar(context, 'Зап. части', {}, null),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
                child: Container(
              width: double.infinity,
              height: 60,
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  SvgPicture.asset('assets/spare_logo.svg'),
                  const SizedBox(height: 20),
                  AppText.blackText18('Находится'),
                  const SizedBox(height: 5),
                  AppText.blackText18('в разработке'),
                ],
              ),
            )),
            Container(
              width: double.infinity,
              height: 55,
              color: Colors.white,
              child: AppButton.filledBlackButton('Ok', onPressed: () {
                Navigator.pop(context);
              }),
            )
          ],
        ),
      )),
    );
  }
}
