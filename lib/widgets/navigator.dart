import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../equipment/equipment_page.dart';

enum Nav { none, calendar, works, equip, history }

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar(
    this.nav, {
    Key? key,
  }) : super(key: key);
  final Nav nav;

  Widget element(String image, String text, GestureTapCallback? onTap) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 50, height: 50, child: IconButton(onPressed: onTap, icon: SvgPicture.asset(image))),
        Text(
          text,
          style: GoogleFonts.montserrat(
              textStyle: const TextStyle(fontSize: 8, fontWeight: FontWeight.w700, color: Color(0xFF8B97A8))),
        )
      ],
    );
  }

  Widget iconAdd() {
    return Container(
      width: 68,
      height: 53,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 68,
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            element(
                nav == Nav.calendar ? 'assets/calendar_sel.svg' : 'assets/calendar.svg',
                'Календарь',
                nav == Nav.calendar
                    ? null
                    : () {
                        print('Календарь');
                      }),
            element(
                nav == Nav.works ? 'assets/works_sel.svg' : 'assets/works.svg',
                'Работы',
                nav == Nav.works
                    ? null
                    : () {
                        print('Работы');
                      }),
            element(
                nav == Nav.equip ? 'assets/equip_sel.svg' : 'assets/equip.svg',
                'Оборудование',
                nav == Nav.equip
                    ? null
                    : () {
                        print('Оборудование');
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const EquipmentManagement()));
                      }),
            element(
                nav == Nav.history ? 'assets/history_sel.svg' : 'assets/history.svg',
                'История',
                nav == Nav.history
                    ? null
                    : () {
                        print('История');
                      }),
            iconAdd()
          ],
        ));
  }
}
