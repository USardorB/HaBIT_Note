import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
// ignore: depend_on_referenced_packages
import 'package:easy_localization_generator/easy_localization_generator.dart';

part 'strings.g.dart';

// https://docs.google.com/spreadsheets/d/1sfL79QT9hwaM4majMg3-GsuzIlIkJyREluqpbrNTAhI/edit?usp=sharing

@SheetLocalization(
  docId: '1rXs3UUsPpGPgyv5pnUYP8mdvYBvxZ_7Nt4X4KKlN7G8',
  version: 2,
  outDir: 'assets/lang',
  outName: 'translations.csv',
  preservedKeywords: [
    'few',
    'many',
    'one',
    'other',
    'two',
    'zero',
    'male',
    'female',
  ],
)
// ignore: unused_element
class _Strings {}
