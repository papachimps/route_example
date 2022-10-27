import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';

import '../screens/app_scaffold.dart';
import '../screens/home_page.dart';
import '../screens/named_screen.dart';
import '../screens/onboarding.dart';
import '../screens/splash.dart';
import '../screens/story_detail.dart';
import '../screens/user_profile.dart';
import 'routes.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: Routes.splash,
      name: "SplashRouter",
      page: Splash,
      deferredLoading: true,
      initial: true,
    ),
    AutoRoute(
      path: Routes.onboarding,
      name: "OnboardingRouter",
      page: Onboarding,
      deferredLoading: true,
    ),
    // AutoRoute(
    //   path: Routes.app,
    //   name: "AppScaffoldRouter",
    //   page: AppScaffold,
    //   deferredLoading: true,
    //   children: [
    AutoRoute(
      path: Routes.home,
      name: 'HomePageRouter',
      deferredLoading: true,
      page: HomePage,
      children: [
        AutoRoute(
          path: Tabs.feed,
          page: NamedScreen,
          name: 'FeedsTab',
        ),
        AutoRoute(
          path: Tabs.podcast,
          page: NamedScreen,
          name: 'PodcastsTab',
        ),
        AutoRoute(
          path: Tabs.search,
          page: NamedScreen,
          name: 'SearchTab',
        ),
        AutoRoute(
          path: Tabs.library,
          page: NamedScreen,
          name: 'LibraryTab',
        ),
        AutoRoute(
          path: Tabs.settings,
          page: NamedScreen,
          name: 'SettingsTab',
        ),
        AutoRoute(
          path: Routes.player,
          page: NamedScreen,
          name: 'PlayerUI',
        ),
        AutoRoute(
          path: Routes.user,
          page: EmptyRouterPage,
          name: 'UserProfileRouter',
          children: [
            AutoRoute(
              path: ':userId',
              page: UserProfilePage,
            ),
          ],
        ),
      ],
    ),
    AutoRoute(
      path: Routes.story,
      page: EmptyRouterPage,
      name: 'StoryRouter',
      children: [
        AutoRoute(
          path: ':storyId',
          page: StoryDetailPage,
        ),
      ],
    ),
    //   ],
    // ),
  ],
)
class $AppRouter {}
