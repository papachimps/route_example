import 'package:flutter/material.dart';
import 'package:route_example/mini_player_wrapper.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    return MiniPlayerWrapper(
      child: widget.child,
    );
  }
}
