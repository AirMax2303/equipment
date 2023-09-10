import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/appbar.dart';
import '../widgets/navigator.dart';

class PPR5 extends StatelessWidget {
  const PPR5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.equip),
      appBar: appBar(context, 'ППР', {}, null),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.white,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.add,
                    color: Color(0xFF8F9BB3),
                  ),
                  TextButton(
                    child: Text('Добавить',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(color: Color(0xFF8F9BB3), fontSize: 14, fontWeight: FontWeight.w700),
                        )),
                    onPressed: () {
//                      BlocProvider.of<EquipmentBloc>(context).add(const EquipmentEvent.gotoAddScreen());
                    },
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.white,
                  child: Column(),
                )
            )
          ],
        )
      ),
    );
  }
}
