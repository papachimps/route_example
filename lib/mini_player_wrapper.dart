import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'screens/named_screen.dart';

late final PanelController panelController;

class MiniPlayerWrapper extends StatefulWidget {
  const MiniPlayerWrapper({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  State<MiniPlayerWrapper> createState() => _MiniPlayerWrapperState();
}

class _MiniPlayerWrapperState extends State<MiniPlayerWrapper> {
  @override
  void initState() {
    panelController = PanelController();
    super.initState();
  }

  double _panelPosition = 1;

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      // boxShadow: [],
      panel: WillPopScope(
        onWillPop: _onWillPopHandlerForPlayerUI,
        child: const NamedScreen(
          screenName: 'Player UI',
        ),
      ),
      controller: panelController,
      key: const ValueKey('mini-player'),
      minHeight: 60,
      maxHeight: MediaQuery.of(context).size.height,
      margin: panelController.isAttached && panelController.isPanelOpen
          ? const EdgeInsets.only(bottom: 0)
          : EdgeInsets.only(bottom: kToolbarHeight * _panelPosition),
      backdropEnabled: true,
      backdropOpacity: 0.5,
      defaultPanelState: PanelState.CLOSED,
      slideDirection: SlideDirection.UP,
      onPanelSlide: (position) => setState(() {
        _panelPosition = 1 - position;
      }),
      onPanelOpened: () {
        print('sliding panel opened!');
        // setState(() {});
      },
      onPanelClosed: () {
        print('sliding panel closed!');
        // setState(() {});
      },
      collapsed: MaterialButton(
        color: Colors.blue,
        onPressed: panelController.open,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(child: Center(child: Text('Mini Player'))),
            IconButton(
              onPressed: panelController.hide,
              icon: const Icon(Icons.close),
            ),
          ],
        ),
      ),
      body: widget.child,
    );
  }

  Future<bool> _onWillPopHandlerForPlayerUI() async {
    if (panelController.isAttached) {
      print('panel attached...');
      if (panelController.isPanelOpen) {
        print('panel open...closing');
        await panelController.close();
        return Future.value(false);
      } else {
        print('panel not open...popping');
        return Future.value(true);
      }
    }
    print('panel not attached...popping');
    return Future.value(true);
  }
}
