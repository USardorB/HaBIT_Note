import 'dart:ui';

enum ColorPlate {
  white(Color(0xffffffff)),
  pastelRed(Color(0xffFF9E9E)),
  orange(Color(0xffFFB347)),
  yellow(Color(0xffFFF599)),
  cyan(Color(0xff9EFFFF)),
  green(Color(0xff91F48F)),
  pink(Color(0xffFD99FF)),
  purple(Color(0xffB69CFF)),
  indigo(Color(0xff624AF2)),
  grey(Color(0xffC4C4C4)),
  lightPink(Color(0xffFCDDEC)),
  lightGrey(Color(0xffF1F1F1));

  final Color color;

  const ColorPlate(this.color);
}
