import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  double forWidth(num width) => MediaQuery.sizeOf(this).width * width;
  double forHeight(num height) => MediaQuery.sizeOf(this).height * height;
  Future<dynamic> push(Route route) => Navigator.of(this).push(route);
  void pop() => Navigator.of(this).pop();
  void popUntillRoot() => Navigator.of(this).popUntil((route) => route.isFirst);
}
