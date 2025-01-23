import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_note/dependency_injection.dart';
import 'package:habit_note/features/auth/presentation/controllers/auth_bloc.dart';
import 'package:habit_note/root_page.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthBloc>()..add(const AuthInitialize()),
      lazy: false,
      child: MaterialApp(
        title: 'HaBIT Note',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme.light().copyWith(
            // surface: const Color(0xFFF1F1F1),
            primary: const Color(0xFFFFB347),
            outline: const Color(0x88000000),
            surfaceContainerLow: const Color(0xFFFFFFFF),
            secondary: const Color(0xFFF1F1F1),
          ),
          textTheme: TextTheme.of(context).copyWith(
            bodyLarge: TextTheme.of(context).bodyLarge?.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
            bodyMedium: TextTheme.of(context).titleLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
            labelLarge: TextTheme.of(context).titleLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
            titleMedium: TextTheme.of(context).titleLarge?.copyWith(
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                ),
            titleSmall: TextTheme.of(context).titleLarge?.copyWith(
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                ),
          ),
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Color(0xFFFFB347)),
            titleTextStyle: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color(0xFFFFFFFF),
              backgroundColor: const Color(0xFFFFB347),
              padding: const EdgeInsets.all(18),
            ),
          ),
          navigationBarTheme: const NavigationBarThemeData(
            iconTheme: WidgetStatePropertyAll(IconThemeData(size: 36)),
          ),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: const Color(0xFFFFFFFF),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Color(0x55000000)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Color(0x44000000)),
            ),
            hintStyle: TextTheme.of(context).bodyLarge?.copyWith(
                  fontWeight: FontWeight.w100,
                  fontSize: 18,
                ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Color(0x88FFB347)),
            ),
          ),
        ),
        home: const RootPage(),
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling,
          ),
          child: child!,
        ),
      ),
    );
  }
}
