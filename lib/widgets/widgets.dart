import 'package:dotted_border/dotted_border.dart';
import 'package:equipment/other/other.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/models.dart';

abstract final class AppColor {
  static const Color stdColor = Color(0xFF7067F2);
  static const Color backgroundColor = Color(0xFFF8F8F8);
  static const Color greenColor = Color(0x1A3F60EE);
  static Color lightBlueColor = const Color(0x1A3F60EE);
  static const Color blueColor = Color(0xFF3F60EE);
}

extension MyColors on Colors {
  Color backgroundColor() => Color(0xFFF8F8F8);
}

abstract final class AppTextStyle {
  static TextStyle blackTextStyle8Label =  const TextStyle(
    color: Color(0xFF8897A8),
    fontSize: 8,
    fontWeight: FontWeight.w400,
    height: 10 / 8,
  );
  static TextStyle blackTextStyle12 = const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400);
  static TextStyle blackTextStyle13 = const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500);
  static TextStyle blackTextStyle13_800 = const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w800);
  static TextStyle blackTextStyle13Label = const TextStyle(
    color: Colors.black,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    height: 24 / 13,
  );
  static TextStyle blackTextStyle14_500 = const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500);
  static TextStyle blackTextStyle14 = const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700);
  static TextStyle blackTextStyle16 = const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700);
  static TextStyle blackTextStyle18 = const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700);
  static TextStyle blackTextStyle20 = const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700);
  static TextStyle blackTextStyle25 = const TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700);
  static TextStyle blackTextStyle29 = const TextStyle(color: Colors.black, fontSize: 29, fontWeight: FontWeight.w700);
  static TextStyle whiteTextStyle10 = const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w200);
  static TextStyle whiteTextStyle12 = const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400);
  static TextStyle whiteTextStyle13 = const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w300);
  static TextStyle whiteTextStyle14 = const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700);
  static TextStyle whiteTextStyle16 = const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700);
  static TextStyle whiteTextStyle18 = const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600);
}

abstract final class AppText {
  static Text text(String? data) {
    return Text(data!, style: GoogleFonts.poppins());
  }

  static blackText13(String data) {
    return Text(data, style: GoogleFonts.poppins(textStyle: AppTextStyle.blackTextStyle13));
  }

  static blackText13_800(String data) {
    return Text(data, style: GoogleFonts.poppins(textStyle: AppTextStyle.blackTextStyle13_800));
  }

  static blackText14(String data) {
    return Text(data, style: GoogleFonts.poppins(textStyle: AppTextStyle.blackTextStyle14));
  }

  static blackText16(String data) {
    return Text(data, style: GoogleFonts.poppins(textStyle: AppTextStyle.blackTextStyle16));
  }

  static blackText18(String data) {
    return Text(data, style: GoogleFonts.poppins(textStyle: AppTextStyle.blackTextStyle18));
  }

  static text14(String data) {
    return Text(data,
        style: GoogleFonts.poppins(
          textStyle: AppTextStyle.blackTextStyle14,
        ));
  }

  static whiteText13(String data) {
    return Text(data,
        style: GoogleFonts.poppins(
          textStyle: AppTextStyle.whiteTextStyle13,
        ));
  }

  static whiteText14(String data) {
    return Text(data,
        style: GoogleFonts.poppins(
          textStyle: AppTextStyle.whiteTextStyle14,
        ));
  }

  static whiteText16(String data) {
    return Text(data,
        style: GoogleFonts.poppins(
          textStyle: AppTextStyle.whiteTextStyle16,
        ));
  }
}

abstract final class AppIcons {
  static Widget icon({required String image, required Color color, double? size}) {
    return Container(
      width: size ?? 30,
      height: size ?? 30,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Image.asset(image),
    );
  }

  static Widget iconButton({required String image, required Color color, required VoidCallback? onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: SvgPicture.asset(
          image,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }

  static Widget icon35({required String image}) {
    return Container(
      width: 35,
      height: 35,
      decoration: const BoxDecoration(
        color: Color(0xCC3F60EE),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SvgPicture.asset(
        image,
        fit: BoxFit.scaleDown,
      ),
    );
  }

  static Widget iconButton35({required String image, required VoidCallback? onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 35,
        height: 35,
        decoration: const BoxDecoration(
          color: Color(0xCC3F60EE),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: SvgPicture.asset(
          image,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}

abstract final class AppButton {
  static double defHeight = 60;

  static Widget filledButton(String data, {Key? key, required VoidCallback? onPressed}) {
    return SizedBox(
      width: double.infinity,
      height: defHeight,
      child: FilledButton(
        style: AppButtonStyle.stdButtonStyle(),
        onPressed: onPressed,
        child: Text(data,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            )),
      ),
    );
  }

  static Widget filledBlackButton(String data, {Key? key, required VoidCallback? onPressed}) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: FilledButton(
        style: AppButtonStyle.stdButtonStyle(color: Colors.black),
        onPressed: onPressed,
        child: Text(data,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            )),
      ),
    );
  }

  static Widget filledLightBlueButton(String data, {Key? key, required VoidCallback? onPressed}) {
    return SizedBox(
      width: double.infinity,
      height: defHeight,
      child: FilledButton(
        style: AppButtonStyle.stdButtonStyle(color: AppColor.lightBlueColor),
        onPressed: onPressed,
        child: Text(
          data,
          style: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xff3f60ee),
            height: 21 / 14,
          ),
        ),
      ),
    );
  }

  static Widget filledInputButton(String data, {Key? key, required VoidCallback? onPressed}) {
    return SizedBox(
      width: double.infinity,
      height: defHeight,
      child: FilledButton(
        style: AppButtonStyle.stdButtonStyle(color: const Color(0xff3f60ee)),
        onPressed: onPressed,
        child: Text(
          data,
          style: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            height: 21 / 14,
          ),
        ),
      ),
    );
  }

  static Widget addImageButten({Key? key}) {
    return DottedBorder(
      color: Colors.blue,
      borderType: BorderType.RRect,
      radius: const Radius.circular(20),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.lightBlueColor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/addimage.png'),
          const SizedBox(height: 5),
          Text(
            'Добавить фото',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF8F9BB3)),
            ),
          ),
        ]),
      ),
    );
  }

  static Widget textButton(String data, {Key? key, required VoidCallback? onPressed}) {
    return TextButton(onPressed: onPressed, child: Text(data, style: AppTextStyle.blackTextStyle12));
  }
}

abstract final class AppButtonStyle {
  static ButtonStyle stdButtonStyle({Color? color}) {
    return TextButton.styleFrom(
      elevation: 0,
      backgroundColor: color ?? Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10) // <-- Radius
          ),
    );
  }
}

class Box extends StatelessWidget {
  Box({Key? key, this.child, this.height, this.color, this.radius, this.padding}) : super(key: key);
  Widget? child;
  double? height;
  Color? color;
  double? radius;
  double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 46,
      decoration: BoxDecoration(
        color: color ?? AppColor.backgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? 6),
        ),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: padding ?? 8.0, right: padding ?? 8.0),
          child: child,
        ),
      ),
    );
    ;
  }
}

class TextBox extends StatelessWidget {
  const TextBox({Key? key, this.width, this.height, this.color, this.radius, this.padding, this.child}) : super(key: key);
  final double? width;
  final double? height;
  final Color? color;
  final double? radius;
  final double? padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 46,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: color ?? AppColor.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 10)),
      ),
      child: Padding(padding: EdgeInsets.all(padding ?? 13.0), child: child),
    );
  }
}

abstract final class AppTextBox {
  static Widget textBox(String data,
      {Widget? child, double? width, double? height, Color? color, double? radius, double? padding}) {
    return Container(
      height: height ?? 46,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: color ?? AppColor.backgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? 10),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding ?? 13.0),
        child: AppText.blackText13(data),
      ),
    );
  }

  static Widget buttonTextBox(String data, bool selected) {
    return Container(
      height: 46,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColor.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Text(data).style13w500(),
      ),
    );
  }

  static Widget textBoxIconButton(String data) {
    return Container(
      height: 46,
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColor.backgroundColor, borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: AppText.blackText13(data),
      ),
    );
  }
}

abstract final class AppDecoration {
  static InputDecoration inputCustom(String labelText, {Color? fillColor, Widget? prefixIcon, Widget? suffixIcon}) {
    return InputDecoration(
      filled: true,
      fillColor: fillColor ?? const Color(0xFFF8F8F8),
      labelStyle: AppTextStyle.blackTextStyle13,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      errorStyle: AppTextStyle.blackTextStyle13,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(10),
      ),
      labelText: labelText,
    );
  }

  static InputDecoration input(String labelText, String prefixIcon) {
    return InputDecoration(
      filled: true,
      fillColor: const Color(0xFFF8F8F8),
      labelStyle: AppTextStyle.blackTextStyle13Label,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      errorStyle: AppTextStyle.whiteTextStyle12,
      prefixIcon: SvgPicture.asset(prefixIcon, fit: BoxFit.scaleDown),
      suffixIcon: SvgPicture.asset('assets/icon.svg', fit: BoxFit.scaleDown),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      labelText: labelText,
    );
  }

  static InputDecoration inputPassword(String labelText, String prefixIcon) {
    return InputDecoration(
      isCollapsed: true,
      contentPadding: const EdgeInsets.all(9),
      filled: true,
      fillColor: const Color(0xFFF8F8F8),
      labelStyle: AppTextStyle.blackTextStyle13Label,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      errorStyle: AppTextStyle.blackTextStyle12,
      prefixIcon: SvgPicture.asset(prefixIcon, fit: BoxFit.scaleDown),
      suffixIcon: SvgPicture.asset('assets/icon.svg', fit: BoxFit.scaleDown),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(10),
      ),
      labelText: labelText,
    );
  }

  static InputDecoration inputEq(String labelText) {
    return InputDecoration(
      filled: true,
      fillColor: const Color(0xFFF8F8F8),
      labelStyle: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      errorStyle: AppTextStyle.blackTextStyle12,
      suffixIcon: SvgPicture.asset('assets/icon.svg', fit: BoxFit.scaleDown),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      labelText: labelText,
    );
  }

  static InputDecoration inputEqDropDown(String labelText, bool up) {
    return InputDecoration(
      filled: true,
      fillColor: const Color(0xFFF8F8F8),
      labelStyle: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      errorStyle: AppTextStyle.blackTextStyle12,
      suffixIcon: Icon(
        up ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
        color: const Color(0xFF8B97A8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      labelText: labelText,
    );
  }

  static InputDecoration inputIcon(String labelText) {
    return InputDecoration(
      filled: true,
      fillColor: const Color(0xFFF8F8F8),
      labelStyle: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      errorStyle: AppTextStyle.blackTextStyle12,
//      suffixIcon: SvgPicture.asset('assets/icon.svg', fit: BoxFit.scaleDown),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      labelText: labelText,
    );
  }
}

Widget iconWork(WorkModel work) {
  if (work.priority!) {
    return SvgPicture.asset('assets/type0.svg');
  } else {
    switch (work.worktype) {
      case 0:
        return SvgPicture.asset('assets/type3.svg');
      case 3:
        return SvgPicture.asset('assets/type2.svg');
      default:
        return const SizedBox(width: 16);
    }
  }
}
