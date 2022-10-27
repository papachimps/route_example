import 'package:flutter/material.dart';

class NamedScreen extends StatelessWidget {
  const NamedScreen({
    super.key,
    required this.screenName,
    this.child,
  });

  final String screenName;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screenName),
      ),
      body: Center(
        child: child ?? Text(screenName),
      ),
    );
  }
}
