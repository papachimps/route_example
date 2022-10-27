import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_example/mini_player_wrapper.dart';
import 'package:route_example/screens/named_screen.dart';

class Podcasts extends StatelessWidget {
  const Podcasts({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) => MaterialButton(
        elevation: 4,
        color: Colors.green,
        onPressed: () async {
          print('Podcast card: $index pressed');
          if (panelController.isAttached) {
            if (!panelController.isPanelShown) {
              await panelController.show();
            }
            panelController.open();
          }
          // context.router.pushWidget(
          //   NamedScreen(screenName: 'Player UI'),
          // );
        },
        child: Text('Podcast Card: $index'),
      ),
      itemCount: 20,
    );
  }
}
