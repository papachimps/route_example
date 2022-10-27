import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_example/mini_player_wrapper.dart';
import 'package:route_example/screens/app_scaffold.dart';
import 'package:route_example/screens/named_screen.dart';

import 'story_feed.dart';

class StoryDetailPage extends StatelessWidget {
  const StoryDetailPage({
    super.key,
    @PathParam() required this.storyId,
  });

  final int storyId;

  @override
  Widget build(BuildContext context) {
    log(context.router.currentUrl);
    return AppScaffold(
      child: NamedScreen(
        screenName: 'StoryDetailPage:$storyId',
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
                child: Placeholder(),
              ),
              const SizedBox(height: 40),
              const SizedBox(
                height: 100,
                child: Placeholder(),
              ),
              const SizedBox(height: 40),
              const Text('Recommended Stories'),
              const SizedBox(height: 40),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => StoryFeedListTile(
                  storyId: index,
                  userId: index,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
