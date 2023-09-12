import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';

class Ppr02 extends StatelessWidget {
  const Ppr02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.equip),
      appBar: appBar(context, 'ППР', {}, null),
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
                    )),
                Container(
                  width: double.infinity,
                  height: 55,
                  color: Colors.white,
                  child: AppButton.filledBlackButton('Добавить', onPressed: () {}),
                )
              ],
            ),
          )),
    );
  }
}
