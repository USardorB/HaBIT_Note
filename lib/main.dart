import 'package:flutter/material.dart';
import 'package:habit_note/dependency_injection.dart';
import 'package:habit_note/habit_note_app.dart';

void main() {
  initializeGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}
