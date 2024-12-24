import 'package:flutter/material.dart';
import 'package:habit_note/app_router.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'HaBIT_Note',
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: const ColorScheme.light().copyWith(
            surface: const Color(0xFFF1F1F1),
            onSurface: const Color(0xFF000000),
            primary: const Color(0xFFFFB347),
            surfaceContainerLow: const Color(0xFFFFFFFF),
          ),
          textTheme: TextTheme.of(context).copyWith(
            bodyLarge: TextTheme.of(context).bodyLarge?.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
            bodyMedium: TextTheme.of(context).titleLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
            labelLarge: TextTheme.of(context).titleLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
          ),
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Color(0xFFFFB347)),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color(0xFFFFFFFF),
              backgroundColor: const Color(0xFFFFB347),
              padding: const EdgeInsets.all(18),
            ),
          )),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling,
          ),
          child: child!,
        );
      },
    );
  }
}
