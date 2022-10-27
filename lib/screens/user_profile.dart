import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_example/screens/named_screen.dart';

import 'story_feed.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({
    super.key,
    @PathParam() required this.userId,
  });

  final int userId;

  @override
  Widget build(BuildContext context) {
    log(context.router.currentUrl);
    return NamedScreen(
      screenName: 'User Profile:$userId',
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
              child: Placeholder(),
            ),
            const SizedBox(height: 40),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index) => StoryFeedListTile(
                storyId: index,
                userId: userId,
              ),
            )
          ],
        ),
      ),
    );
  }
}
