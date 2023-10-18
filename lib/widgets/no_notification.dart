import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NoNotification extends StatelessWidget {
  const NoNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: SvgPicture.asset('assets/nonotification.svg'),
        ),
      ),
    );
  }
}

