import 'package:dotted_border/dotted_border.dart';
import 'package:equipment/widgets/text_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/models.dart';

abstract final class AppColor {
  static const Color stdColor = Color(0xFF7067F2);
  static const Color backgroundColor = Color(0xFFF8F8F8);
  static const Color profileInputColor = Color(0xFFF8F8F8);

//  static const Color backgroundColor = Color(0x1ABAF1C4);
  static const Color greenColor = Color(0x1A3F60EE);
  static Color lightBlueColor = const Color(0x1A3F60EE);
  static const Color blueColor = Color(0xFF3F60EE);
  static const Color blackColor = Color(0xFF2F2E41);
}

class AppFilledButton extends StatelessWidget {
  const AppFilledButton(this.data, {Key? key, this.backgroundColor, this.textColor, required this.onPressed}) : super(key: key);
  final String data;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: FilledButton(
        style: TextButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor ?? AppColor.blackColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10) // <-- Radius
              ),
        ),
        onPressed: onPressed,
        child: Text(data,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: textColor ?? Colors.white),
            )),
      ),
    );
  }
}

class IconBox extends StatelessWidget {
  const IconBox(this.assetName, {Key? key, this.width, this.height, this.backgroundColor, this.radius, this.onPressed})
      : super(key: key);
  final String assetName;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final double? radius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width ?? 40,
        height: height ?? 40,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? 10),
          ),
        ),
        child: SvgPicture.asset(assetName, fit: BoxFit.scaleDown),
      ),
    );
  }
}

class SelectImageButton extends StatelessWidget {
  const SelectImageButton({Key? key, required this.onTap}) : super(key: key);
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: DottedBorder(
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
            Text('Добавить фото',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF8F9BB3)))),
          ]),
        ),
      ),
    );
  }
}

abstract final class AppButtonStyle {
  static ButtonStyle stdButtonStyle({Color? color, double? radius}) {
    return TextButton.styleFrom(
      elevation: 0,
      backgroundColor: color ?? AppColor.blackColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? 10) // <-- Radius
          ),
    );
  }
}

class Box extends StatelessWidget {
  const Box({Key? key, this.child, this.height, this.color, this.radius, this.padding}) : super(key: key);
  final Widget? child;
  final double? height;
  final Color? color;
  final double? radius;
  final double? padding;

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
  }
}

class TextBox extends StatelessWidget {
  const TextBox({Key? key, this.width, this.height, this.color, this.radius, this.padding, this.onTap, required this.child})
      : super(key: key);
  final double? width;
  final double? height;
  final Color? color;
  final double? radius;
  final double? padding;
  final GestureTapCallback? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 46,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          color: color ?? AppColor.backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 10)),
        ),
        child: Padding(padding: EdgeInsets.all(padding ?? 13.0), child: child),
      ),
    );
  }
}

abstract final class AppDecoration {
  static InputDecoration inputCustom(String labelText, {Color? fillColor, Widget? prefixIcon, Widget? suffixIcon}) {
    return InputDecoration(
        filled: true,
        fillColor: fillColor ?? AppColor.backgroundColor,
        labelStyle: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        errorStyle: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
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
        isDense: true,
        contentPadding: const EdgeInsets.all(12));
  }

  static InputDecoration input(String labelText, String prefixIcon, {Color? fillColor}) {
    return InputDecoration(
        filled: true,
        fillColor: fillColor ?? AppColor.backgroundColor,
        labelStyle: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500, height: 24 / 13),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        errorStyle: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
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
        isDense: true,
        contentPadding: const EdgeInsets.all(12));
  }

  static InputDecoration inputPassword(String labelText, String prefixIcon, {Color? fillColor}) {
    return InputDecoration(
      isCollapsed: true,
      filled: true,
      fillColor: fillColor ?? AppColor.backgroundColor,
      labelStyle: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500, height: 24 / 13),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      errorStyle: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
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
      isDense: true,
      contentPadding: const EdgeInsets.all(9),
    );
  }

  static InputDecoration inputEq(String labelText) {
    return InputDecoration(
        filled: true,
        fillColor: AppColor.backgroundColor,
        labelStyle: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        errorStyle: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
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
        isDense: true,
        contentPadding: const EdgeInsets.all(12));
  }

  static InputDecoration inputEqDropDown(String labelText, bool up) {
    return InputDecoration(
        filled: true,
        fillColor: AppColor.backgroundColor,
        labelStyle: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        errorStyle: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
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
        isDense: true,
        contentPadding: const EdgeInsets.all(12));
  }

  static InputDecoration inputIcon(String labelText) {
    return InputDecoration(
      filled: true,
      fillColor: AppColor.backgroundColor,
      labelStyle: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      errorStyle: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
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
