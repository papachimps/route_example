import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_example/router/routes.dart';
import 'package:route_example/screens/named_screen.dart';

class Splash extends StatelessWidget {
  const Splash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        context.router.replaceNamed(Routes.onboarding);
      },
    );
    return const NamedScreen(
      screenName: 'Splash Screen',
      child: Text('Splash...Going to Onboarding in 2 secs...'),
    );
  }
}
