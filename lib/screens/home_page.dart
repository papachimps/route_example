import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_example/screens/app_scaffold.dart';
import 'package:route_example/screens/podcasts.dart';
import '../router/router.gr.dart';
import 'story_feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: AutoTabsScaffold(
        primary: true,
        homeIndex: 0,
        inheritNavigatorObservers: true,
        lazyLoad: true,
        resizeToAvoidBottomInset: true,
        routes: [
          FeedsTab(
            screenName: 'Feed',
            child: const Feeds(),
          ),
          PodcastsTab(
            screenName: 'Listen',
            child: const Podcasts(),
          ),
          SearchTab(screenName: 'Search'),
          LibraryTab(screenName: 'Library'),
          SettingsTab(screenName: 'Settings'),
        ],
        bottomNavigationBuilder: _bottomNavigationBuilder,
        navigatorObservers: () => [MyObserver()],
      ),
    );
  }

  Widget _bottomNavigationBuilder(BuildContext _, TabsRouter tabsRouter) {
    return BottomNavigationBar(
      currentIndex: tabsRouter.activeIndex,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.red,
      onTap: (tappedIndex) {
        tabsRouter.setActiveIndex(tappedIndex);
      },
      items: const [
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.home,
          ),
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.mic,
          ),
          icon: Icon(Icons.mic),
          label: 'Listen',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.search,
          ),
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.bookmark,
          ),
          icon: Icon(Icons.bookmark),
          label: 'Bookmarks',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.settings,
          ),
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}

class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    print('New route pushed: ${route.settings.name}');
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    print('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    print('Tab route re-visited: ${route.name}');
  }
}
