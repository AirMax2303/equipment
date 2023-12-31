import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/navigator.dart';
import '../widgets/widgets.dart';

class Tem01 extends StatelessWidget {
  const Tem01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.none),
      appBar: appBar(context, '', {}, null),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: const Center(
            child: Text('ППР 5'),
          ),
        ),
      ),
    );
  }
}

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
                width: double.infinity, height: 55, color: Colors.white, child: AppFilledButton('Добавить', onPressed: () {}))
          ],
        ),
      )),
    );
  }
}
