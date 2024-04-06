import 'package:flutter/painting.dart';

class UIColor extends ColorSwatch<int> {
  final String? name;

  const UIColor(super.primary, super.swatch, {this.name});

  Color get step1 => this[1]!;
  Color get step2 => this[2]!;
  Color get step3 => this[3]!;
  Color get step4 => this[4]!;
  Color get step5 => this[5]!;
  Color get step6 => this[6]!;
  Color get step7 => this[7]!;
  Color get step8 => this[8]!;
  Color get step9 => this[9]!;
  Color get step10 => this[10]!;
  Color get step11 => this[11]!;
  Color get step12 => this[12]!;
}
