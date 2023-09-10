import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/navigator.dart';
import '../widgets/widgets.dart';

class WorksDay01 extends StatelessWidget {
  const WorksDay01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(Nav.works),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: AppText.whiteText14('Работы'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset('assets/back-arrow.svg')),
        actions: [
          IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/home_white.svg')),
          IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/profile_white.svg')),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: const Center(
            child: Text('Работы 01'),
          ),
        ),
      ),
    );
  }
}
