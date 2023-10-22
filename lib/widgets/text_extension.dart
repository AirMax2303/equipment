import 'package:flutter/material.dart';

extension TextExtension on Text {
  Text setStyle(TextStyle style) => copyWith(style: style);

  Text style12w300({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: color ?? Colors.black));

  Text style12w400({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: color ?? Colors.black));

  Text style12w500({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: color ?? Colors.black));

  Text style12w700({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: color ?? Colors.black));

  Text style13w300({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300, color: color ?? Colors.black));

  Text style13w500({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: color ?? Colors.black));

  Text style14w400({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: color ?? Colors.black));

  Text style14w500({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: color ?? Colors.black));

  Text style14w700({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: color ?? Colors.black));

  Text style16w400({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: color ?? Colors.black));

  Text style16w500({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: color ?? Colors.black));

  Text style16w700({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: color ?? Colors.black));

  Text style18w700({Color? color}) =>
      copyWith(style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: color ?? Colors.black));

  Text setFontFamily(String fontFamily) => copyWith(style: TextStyle(fontFamily: fontFamily));

  Text copyWith(
      {Key? key,
        StrutStyle? strutStyle,
        TextAlign? textAlign,
        TextDirection textDirection = TextDirection.ltr,
        Locale? locale,
        bool? softWrap,
        TextOverflow? overflow,
        double? textScaleFactor,
        int? maxLines,
        String? semanticsLabel,
        TextWidthBasis? textWidthBasis,
        TextStyle? style}) {
    return Text(data!,
        key: key ?? this.key,
        strutStyle: strutStyle ?? this.strutStyle,
        textAlign: textAlign ?? this.textAlign,
        textDirection: textDirection ?? this.textDirection,
        locale: locale ?? this.locale,
        softWrap: softWrap ?? this.softWrap,
        overflow: overflow ?? this.overflow,
        textScaleFactor: textScaleFactor ?? this.textScaleFactor,
        maxLines: maxLines ?? this.maxLines,
        semanticsLabel: semanticsLabel ?? this.semanticsLabel,
        textWidthBasis: textWidthBasis ?? this.textWidthBasis,
        style: style != null ? this.style?.merge(style) ?? style : this.style);
  }
}
