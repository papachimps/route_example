import 'package:flutter/material.dart';

import 'router/router.gr.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Router Example with Sliding Panel',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}

class ScaffoldState {
  static Map<int, String> mapScreen = {};
  static ValueNotifier<bool> showNavBar = ValueNotifier(false);
  static ValueNotifier<bool> showSlidingPanel = ValueNotifier(false);
  static List<BottomNavigationBarItem> navigationBarItems = [];
}
