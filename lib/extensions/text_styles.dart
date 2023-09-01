import 'package:flutter/material.dart';


import '../utils/app_constants.dart';

/// Text  Styles

/// Bold Text Style
TextStyle boldTextStyle({
  int? fontSize,
  Color? fontColor,
  FontWeight? fontWeight,
  String? fontFamily,
  double? letterSpacing,
  FontStyle? fontFontStyle,
  double? wordSpacing,
  TextDecoration? decoration,
  TextDecorationStyle? textDecorationStyle,
  TextBaseline? textBaseline,
  Color? decorationColor,
  Color? backgroundColor,
  double? height,
}) {
  return TextStyle(
    fontSize: fontSize != null ? fontSize.toDouble() : textBoldSizeGlobal,
    color: fontColor ?? Colors.black,
    fontWeight: fontWeight ?? FontWeight.bold,
    fontFamily: fontFamily ?? "",
    letterSpacing: letterSpacing,
    fontStyle: fontFontStyle,
    decoration: decoration,
    decorationStyle: textDecorationStyle,
    decorationColor: decorationColor,
    wordSpacing: wordSpacing,
    textBaseline: textBaseline,
    backgroundColor: backgroundColor,
    height: height,
  );
}

/// Primary Text Style
TextStyle primaryTextStyle({
  int? size,
  Color? color,
  FontWeight? weight,
  String? fontFamily,
  double? letterSpacing,
  FontStyle? fontStyle,
  double? wordSpacing,
  TextDecoration? decoration,
  TextDecorationStyle? textDecorationStyle,
  TextBaseline? textBaseline,
  Color? decorationColor,
  Color? backgroundColor,
  double? height,
}) {
  return TextStyle(
    fontSize: size != null ? size.toDouble() : textPrimarySizeGlobal,
    color: color ?? Colors.black,
    fontWeight: weight ?? FontWeight.normal,
    fontFamily: fontFamily ?? "",
    letterSpacing: letterSpacing,
    fontStyle: fontStyle,
    decoration: decoration,
    decorationStyle: textDecorationStyle,
    decorationColor: decorationColor,
    wordSpacing: wordSpacing,
    textBaseline: textBaseline,
    backgroundColor: backgroundColor,
    height: height,
  );
}

/// Secondary Text Style
TextStyle secondaryTextStyle({
  int? size,
  Color? color,
  FontWeight? weight,
  String? fontFamily,
  double? letterSpacing,
  FontStyle? fontStyle,
  double? wordSpacing,
  TextDecoration? decoration,
  TextDecorationStyle? textDecorationStyle,
  TextBaseline? textBaseline,
  Color? decorationColor,
  Color? backgroundColor,
  double? height,
}) {
  return TextStyle(
    fontSize: size != null ? size.toDouble() : textSecondarySizeGlobal,
    color: color ?? Color(0xFF757575),
    fontWeight: weight ?? FontWeight.normal,
    fontFamily: fontFamily,
    letterSpacing: letterSpacing,
    fontStyle: fontStyle,
    decoration: decoration,
    decorationStyle: textDecorationStyle,
    decorationColor: decorationColor,
    wordSpacing: wordSpacing,
    textBaseline: textBaseline,
    backgroundColor: backgroundColor,
    height: height,
  );
}
