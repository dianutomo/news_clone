import 'dart:ui';
import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex), 'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) + (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

Color fromHex(String hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}

class ColorConstants {
  static Color primaryColor = hexToColor("#ED3E9A");
  static Color primaryLightColor = hexToColor("#F27FBC");
  static Color primaryDarkColor = hexToColor("#B0015D");
  static Color dangerColor = hexToColor("#E40000");

  static Color whiteColor = hexToColor("#FFFFFF");
  static Color whiteColor0 = hexToColor("#00FFFFFF");
  static Color whiteColor100 = hexToColor("#FFFFFFFF");

  static Color shadowBox = fromHex("#19000000");
  static Color orangeA100 = fromHex('#f9d372');
  static Color whiteA7007f = fromHex('#7fffffff');
  static Color gray301 = fromHex('#e3e3e3');
  static Color gray500 = fromHex('#aaaaaa');
  static Color tealA100 = fromHex('#b9ffee');
  static Color gray200 = fromHex('#eeeeee');
  static Color gray300 = fromHex('#dddddd');
  static Color tealA101 = fromHex('#b8ffee');
  static Color gray100 = fromHex('#f7f7f7');
  static Color bluegray900 = fromHex('#333333');
  static Color whiteA70087 = fromHex('#87ffffff');
  static Color whiteA70000 = fromHex('#00ffffff');
  static Color whiteA70033 = fromHex('#33ffffff');
  static Color pinkA200 = fromHex('#ed3e9a');
  // static Color pinkA200 = fromHex('#fcff15'); //palsu kuning
  static Color black90033 = fromHex('#33000000');
  static Color black900 = fromHex('#000000');
  static Color bluegray400 = fromHex('#888888');
  static Color pink800 = fromHex('#b0015d');
  //static Color pink800 = fromHex('#3615ff'); //palsu biru
  static Color black90019 = fromHex('#19000000');
  static Color bluegray9007f = fromHex('#7f333333');
  static Color whiteA700 = fromHex('#ffffff');
  static Color yellow = fromHex('#FAD472');
}
