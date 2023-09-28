import 'package:equipment/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../calendar/calendar_page.dart';
import '../equipment/equipment_page.dart';
import '../order/order_page.dart';
import '../works_day/works_day_01.dart';

enum Nav { none, calendar, works, equip, history, add }

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

  Widget iconAdd(BuildContext context, bool current) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderPage()));
      },
      child: Container(
        width: 68,
        height: 53,
        decoration: BoxDecoration(
          color: current ? AppColor.blueColor : Colors.black,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CalendarPage(
                                      date: DateTime.now(),
                                      nav: Nav.calendar,
                                    )));
                      }),
            element(
                nav == Nav.works ? 'assets/works_sel.svg' : 'assets/works.svg',
                'Работы',
                nav == Nav.works
                    ? null
                    : () {
                        print('Работы');
                        Navigator.push(context, MaterialPageRoute(builder: (context) => WorkDayPage(date: DateTime.now())));
                      }),
            element(
                nav == Nav.equip ? 'assets/equip_sel.svg' : 'assets/equip.svg',
                'Оборудование',
                nav == Nav.equip
                    ? null
                    : () {
                        print('Оборудование');
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EquipmentPage()));
                      }),
            element(
                nav == Nav.history ? 'assets/history_sel.svg' : 'assets/history.svg',
                'История',
                nav == Nav.history
                    ? null
                    : () {
                        print('История');
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CalendarPage(date: DateTime.now(), nav: Nav.history)));
                      }),
            iconAdd(context, nav == Nav.add)
          ],
        ));
  }
}
