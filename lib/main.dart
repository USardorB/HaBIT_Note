import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:habit_note/bloc_observer.dart';
import 'package:habit_note/habit_note_app.dart';
import 'package:habit_note/injection.dart';

Future<void> main() async {
  // initializeGetIt();
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('en', 'US'),
      Locale('ru', 'RU'),
      Locale('uz', 'UZ'),
      Locale('uz', 'Cr'),
    ],
    path: 'assets/lang/translations.csv',
    fallbackLocale: const Locale('en', 'US'),
    assetLoader: CsvAssetLoader(),
    child: const MainApp(),
  ));
}
