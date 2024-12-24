import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  double forWidth(num width) => MediaQuery.sizeOf(this).width * width;
  double forHeight(num height) => MediaQuery.sizeOf(this).height * height;
}
