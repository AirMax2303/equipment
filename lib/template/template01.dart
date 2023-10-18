import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/navigator.dart';

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

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}
