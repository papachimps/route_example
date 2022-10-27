import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/router.gr.dart';

class Feeds extends StatelessWidget {
  const Feeds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) => StoryFeedListTile(
        storyId: index,
        userId: index,
      ),
      itemCount: 20,
    );
  }
}

class StoryFeedListTile extends StatelessWidget {
  const StoryFeedListTile({
    super.key,
    required this.storyId,
    required this.userId,
  });
  final int storyId;
  final int userId;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: MaterialButton(
          color: Colors.green,
          minWidth: 40,
          shape: const CircleBorder(),
          onPressed: () {
            log(context.router.currentUrl);
            context.router.push(
              UserProfileRouter(
                children: [
                  UserProfileRoute(userId: userId),
                ],
              ),
              onFailure: (failure) => log('$failure'),
            );
          },
          child: Text('$userId'),
        ),
        title: Text('Story number: $storyId'),
        onTap: () {
          log(context.router.currentUrl);
          context.router.push(
            StoryRouter(
              children: [
                StoryDetailRoute(storyId: storyId),
              ],
            ),
            onFailure: (failure) => log('$failure'),
          );
        });
  }
}
