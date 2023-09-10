import 'package:equipment/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/appbar.dart';
import '../widgets/navigator.dart';

class SelectTarif extends StatelessWidget {
  SelectTarif({Key? key}) : super(key: key);
  ValueNotifier<bool> radio = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.none),
      appBar: appBar(context, '', {}, null),
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  AppSixeBox.size20,
                  AppSixeBox.size20,
                  AppText.blackText14('Тарифы'),
                  AppSixeBox.size20,
                  ValueListenableBuilder(
                      valueListenable: radio,
                      builder: (BuildContext context, bool value, Widget? child) {
                        return Column(
                          children: [
                            Element('Бесплатно', 'Начальный', radio.value, () {if (!radio.value) {radio.value = !radio.value;}}),
                            AppSixeBox.size16,
                            Element('700р./мес.', 'Полный', !radio.value, () {if (radio.value) {radio.value = !radio.value;}}),
                          ],
                        );
                      }),
                  AppSixeBox.size20,
                  AppButton.filledBlackButton('Подключить', onPressed: () {
                    Navigator.pop(context, radio.value ? 'Начальный' : 'Полный');
                  }),
                  AppSixeBox.size20,
                  AppSixeBox.size20,
                  Text(
                    'Пользовательское соглашение',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Color(0xFF3F60EE), fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                  Text(
                    'Политика конфидециальности',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Color(0xFF3F60EE), fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                  Text(
                    'Публичной оферты',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Color(0xFF3F60EE), fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Element extends StatelessWidget {
  Element(this.text1, this.text2, this.radio, this.onPressed, {Key? key}) : super(key: key);
  String text1;
  String text2;
  bool radio;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 60,
            width: 100,
            color: AppColor.lightBlueColor,
            child: Center(
              child: Text(
                text1,
                style: GoogleFonts.poppins(color: AppColor.blueColor, fontSize: 12, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width - 132,
            color: AppColor.backgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text2,
                        style: GoogleFonts.poppins(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      radio ? SvgPicture.asset('assets/radio_on.svg') : SvgPicture.asset('assets/radio_off.svg'),
                    ],
                  ),
                  Text(
                    'Доступно 10 единиц оборудования',
                    style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
