// import 'package:flutter/widgets.dart' show GlobalKey, NavigatorState;
import 'package:go_router/go_router.dart';
import 'package:habit_note/features/home/presentation/pages/home_page.dart';

// final _shellNavigatorKey = GlobalKey<NavigatorState>();
final homeRoute = [
  GoRoute(
    path: '/app',
    builder: (context, state) => const HomePage(),
  ),
  // GoRoute(
  //   path: '/Home/ocr',
  //   parentNavigatorKey: _shellNavigatorKey,
  //   builder: (context, state) => const ChatPage(),
  // ),
  // GoRoute(
  //   path: '/Home/help',
  //   parentNavigatorKey: _shellNavigatorKey,
  //   builder: (context, state) => const ChatPage(),
  // ),
  // GoRoute(
  //   path: '/Home/me',
  //   parentNavigatorKey: _shellNavigatorKey,
  //   builder: (context, state) => const ChatPage(),
  // ),
];
