import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main_chapter/main_page.dart';
import '../profile/userdata.dart';

enum AppBarButton { home, profile }

AppBar appBar(BuildContext context, String title, Set<AppBarButton> appBarButtons, VoidCallback? onPressed) {
  return AppBar(
    backgroundColor: Colors.black,
    title: Text(
      title,
      style: GoogleFonts.montserrat(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white)),
    ),
    leading: IconButton(
      icon: SvgPicture.asset('assets/back-arrow.svg'),
      onPressed: onPressed ??
          () {
            Navigator.pop(context);
          },
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset(appBarButtons.contains(AppBarButton.home) ? 'assets/home_blue.svg' : 'assets/home_white.svg'),
        onPressed: appBarButtons.contains(AppBarButton.home)
            ? null
            : () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
              },
      ),
      IconButton(
          icon: SvgPicture.asset(
              appBarButtons.contains(AppBarButton.profile) ? 'assets/profile_blue.svg' : 'assets/profile_white.svg'),
          onPressed: appBarButtons.contains(AppBarButton.profile)
              ? null
              : () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserDataScreen()));
                }),
    ],
  );
}
