import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color cyanA400 = fromHex('#08ccfa');

  static Color whiteA7007f = fromHex('#7fffffff');

  static Color blueA40001 = fromHex('#1877f2');

  static Color blueGray50 = fromHex('#f1f1f1');

  static Color blueA400 = fromHex('#1e78ff');

  static Color blueGray10001 = fromHex('#cac4d0');

  static Color gray80001 = fromHex('#484848');

  static Color greenA200 = fromHex('#8afba2');

  static Color gray50 = fromHex('#fdfbfb');

  static Color teal100 = fromHex('#a3eae3');

  static Color whiteA700Cc = fromHex('#ccfffcfc');

  static Color black90001 = fromHex('#000000');

  static Color black90000 = fromHex('#00000000');

  static Color black900 = fromHex('#0e0e0e');

  static Color yellow700 = fromHex('#ffc538');

  static Color yellow70051 = fromHex('#51ffc538');

  static Color gray50001 = fromHex('#938f99');

  static Color lightBlueA700 = fromHex('#0885fa');

  static Color blueGray900 = fromHex('#263238');

  static Color gray20000 = fromHex('#00eae9e9');

  static Color redA700 = fromHex('#e60000');

  static Color cyanA4007e = fromHex('#7e08ccfa');

  static Color black90002 = fromHex('#000000');

  static Color black9004c = fromHex('#4c000000');

  static Color gray600 = fromHex('#79747e');

  static Color gray400 = fromHex('#b2b2b2');

  static Color gray500 = fromHex('#a6a6a6');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color gray60001 = fromHex('#737373');

  static Color blueGray400 = fromHex('#888888');

  static Color whiteA700A5 = fromHex('#a5ffffff');

  static Color gray800 = fromHex('#4a4a4a');

  static Color gray900 = fromHex('#1d1b20');

  static Color gray90001 = fromHex('#282828');

  static Color lightBlue50 = fromHex('#dbf8ff');

  static Color gray9007c = fromHex('#7c1d1b20');

  static Color green50 = fromHex('#d2ffdb');

  static Color gray300 = fromHex('#e3e4e4');

  static Color gray30002 = fromHex('#e6e0e9');

  static Color gray30001 = fromHex('#e2e4e4');

  static Color gray100 = fromHex('#f5eff7');

  static Color gray9001e = fromHex('#1e1d1b20');

  static Color gray10001 = fromHex('#f3f3f3');

  static Color cyanA40019 = fromHex('#1908ccfa');

  static Color redA70001 = fromHex('#ff0c0c');

  static Color black90019 = fromHex('#19000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
