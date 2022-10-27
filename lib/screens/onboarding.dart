import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_example/screens/named_screen.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NamedScreen(
      screenName: 'Onboarding Screen',
      child: ElevatedButton(
        onPressed: () {
          context.router.replaceNamed('home');
        },
        child: const Text('Login (Go to Home)'),
      ),
    );
  }
}
