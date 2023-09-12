import 'package:equipment/ppr/ppr_9.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/appbar.dart';
import '../widgets/navigator.dart';

class Ppr5Screen extends StatelessWidget {
  Ppr5Screen({Key? key, required this.equipmentid}) : super(key: key);
  String equipmentid;

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
                mainAxisAlignment: MainAxisAlignment.end,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Ppr9Screen()));
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

class PPR9 {
}
