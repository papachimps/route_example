// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:auto_route/empty_router_widgets.dart' as _i4;
import 'package:flutter/material.dart' as _i9;

import '../screens/home_page.dart' deferred as _i3;
import '../screens/named_screen.dart' as _i5;
import '../screens/onboarding.dart' deferred as _i2;
import '../screens/splash.dart' deferred as _i1;
import '../screens/story_detail.dart' as _i7;
import '../screens/user_profile.dart' as _i6;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.Splash(),
        ),
      );
    },
    OnboardingRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.Onboarding(),
        ),
      );
    },
    HomePageRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.HomePage(),
        ),
      );
    },
    StoryRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    FeedsTab.name: (routeData) {
      final args = routeData.argsAs<FeedsTabArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.NamedScreen(
          key: args.key,
          screenName: args.screenName,
          child: args.child,
        ),
      );
    },
    PodcastsTab.name: (routeData) {
      final args = routeData.argsAs<PodcastsTabArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.NamedScreen(
          key: args.key,
          screenName: args.screenName,
          child: args.child,
        ),
      );
    },
    SearchTab.name: (routeData) {
      final args = routeData.argsAs<SearchTabArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.NamedScreen(
          key: args.key,
          screenName: args.screenName,
          child: args.child,
        ),
      );
    },
    LibraryTab.name: (routeData) {
      final args = routeData.argsAs<LibraryTabArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.NamedScreen(
          key: args.key,
          screenName: args.screenName,
          child: args.child,
        ),
      );
    },
    SettingsTab.name: (routeData) {
      final args = routeData.argsAs<SettingsTabArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.NamedScreen(
          key: args.key,
          screenName: args.screenName,
          child: args.child,
        ),
      );
    },
    PlayerUI.name: (routeData) {
      final args = routeData.argsAs<PlayerUIArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.NamedScreen(
          key: args.key,
          screenName: args.screenName,
          child: args.child,
        ),
      );
    },
    UserProfileRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    UserProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserProfileRouteArgs>(
          orElse: () =>
              UserProfileRouteArgs(userId: pathParams.getInt('userId')));
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.UserProfilePage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    StoryDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<StoryDetailRouteArgs>(
          orElse: () =>
              StoryDetailRouteArgs(storyId: pathParams.getInt('storyId')));
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.StoryDetailPage(
          key: args.key,
          storyId: args.storyId,
        ),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'splash',
          fullMatch: true,
        ),
        _i8.RouteConfig(
          SplashRouter.name,
          path: 'splash',
          deferredLoading: true,
        ),
        _i8.RouteConfig(
          OnboardingRouter.name,
          path: 'onboarding',
          deferredLoading: true,
        ),
        _i8.RouteConfig(
          HomePageRouter.name,
          path: 'home',
          deferredLoading: true,
          children: [
            _i8.RouteConfig(
              FeedsTab.name,
              path: 'feed',
              parent: HomePageRouter.name,
            ),
            _i8.RouteConfig(
              PodcastsTab.name,
              path: 'podcast',
              parent: HomePageRouter.name,
            ),
            _i8.RouteConfig(
              SearchTab.name,
              path: 'search',
              parent: HomePageRouter.name,
            ),
            _i8.RouteConfig(
              LibraryTab.name,
              path: 'library',
              parent: HomePageRouter.name,
            ),
            _i8.RouteConfig(
              SettingsTab.name,
              path: 'settings',
              parent: HomePageRouter.name,
            ),
            _i8.RouteConfig(
              PlayerUI.name,
              path: 'player',
              parent: HomePageRouter.name,
            ),
            _i8.RouteConfig(
              UserProfileRouter.name,
              path: 'user',
              parent: HomePageRouter.name,
              children: [
                _i8.RouteConfig(
                  UserProfileRoute.name,
                  path: ':userId',
                  parent: UserProfileRouter.name,
                )
              ],
            ),
          ],
        ),
        _i8.RouteConfig(
          StoryRouter.name,
          path: 'story',
          children: [
            _i8.RouteConfig(
              StoryDetailRoute.name,
              path: ':storyId',
              parent: StoryRouter.name,
            )
          ],
        ),
      ];
}

/// generated route for
/// [_i1.Splash]
class SplashRouter extends _i8.PageRouteInfo<void> {
  const SplashRouter()
      : super(
          SplashRouter.name,
          path: 'splash',
        );

  static const String name = 'SplashRouter';
}

/// generated route for
/// [_i2.Onboarding]
class OnboardingRouter extends _i8.PageRouteInfo<void> {
  const OnboardingRouter()
      : super(
          OnboardingRouter.name,
          path: 'onboarding',
        );

  static const String name = 'OnboardingRouter';
}

/// generated route for
/// [_i3.HomePage]
class HomePageRouter extends _i8.PageRouteInfo<void> {
  const HomePageRouter({List<_i8.PageRouteInfo>? children})
      : super(
          HomePageRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomePageRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class StoryRouter extends _i8.PageRouteInfo<void> {
  const StoryRouter({List<_i8.PageRouteInfo>? children})
      : super(
          StoryRouter.name,
          path: 'story',
          initialChildren: children,
        );

  static const String name = 'StoryRouter';
}

/// generated route for
/// [_i5.NamedScreen]
class FeedsTab extends _i8.PageRouteInfo<FeedsTabArgs> {
  FeedsTab({
    _i9.Key? key,
    required String screenName,
    _i9.Widget? child,
  }) : super(
          FeedsTab.name,
          path: 'feed',
          args: FeedsTabArgs(
            key: key,
            screenName: screenName,
            child: child,
          ),
        );

  static const String name = 'FeedsTab';
}

class FeedsTabArgs {
  const FeedsTabArgs({
    this.key,
    required this.screenName,
    this.child,
  });

  final _i9.Key? key;

  final String screenName;

  final _i9.Widget? child;

  @override
  String toString() {
    return 'FeedsTabArgs{key: $key, screenName: $screenName, child: $child}';
  }
}

/// generated route for
/// [_i5.NamedScreen]
class PodcastsTab extends _i8.PageRouteInfo<PodcastsTabArgs> {
  PodcastsTab({
    _i9.Key? key,
    required String screenName,
    _i9.Widget? child,
  }) : super(
          PodcastsTab.name,
          path: 'podcast',
          args: PodcastsTabArgs(
            key: key,
            screenName: screenName,
            child: child,
          ),
        );

  static const String name = 'PodcastsTab';
}

class PodcastsTabArgs {
  const PodcastsTabArgs({
    this.key,
    required this.screenName,
    this.child,
  });

  final _i9.Key? key;

  final String screenName;

  final _i9.Widget? child;

  @override
  String toString() {
    return 'PodcastsTabArgs{key: $key, screenName: $screenName, child: $child}';
  }
}

/// generated route for
/// [_i5.NamedScreen]
class SearchTab extends _i8.PageRouteInfo<SearchTabArgs> {
  SearchTab({
    _i9.Key? key,
    required String screenName,
    _i9.Widget? child,
  }) : super(
          SearchTab.name,
          path: 'search',
          args: SearchTabArgs(
            key: key,
            screenName: screenName,
            child: child,
          ),
        );

  static const String name = 'SearchTab';
}

class SearchTabArgs {
  const SearchTabArgs({
    this.key,
    required this.screenName,
    this.child,
  });

  final _i9.Key? key;

  final String screenName;

  final _i9.Widget? child;

  @override
  String toString() {
    return 'SearchTabArgs{key: $key, screenName: $screenName, child: $child}';
  }
}

/// generated route for
/// [_i5.NamedScreen]
class LibraryTab extends _i8.PageRouteInfo<LibraryTabArgs> {
  LibraryTab({
    _i9.Key? key,
    required String screenName,
    _i9.Widget? child,
  }) : super(
          LibraryTab.name,
          path: 'library',
          args: LibraryTabArgs(
            key: key,
            screenName: screenName,
            child: child,
          ),
        );

  static const String name = 'LibraryTab';
}

class LibraryTabArgs {
  const LibraryTabArgs({
    this.key,
    required this.screenName,
    this.child,
  });

  final _i9.Key? key;

  final String screenName;

  final _i9.Widget? child;

  @override
  String toString() {
    return 'LibraryTabArgs{key: $key, screenName: $screenName, child: $child}';
  }
}

/// generated route for
/// [_i5.NamedScreen]
class SettingsTab extends _i8.PageRouteInfo<SettingsTabArgs> {
  SettingsTab({
    _i9.Key? key,
    required String screenName,
    _i9.Widget? child,
  }) : super(
          SettingsTab.name,
          path: 'settings',
          args: SettingsTabArgs(
            key: key,
            screenName: screenName,
            child: child,
          ),
        );

  static const String name = 'SettingsTab';
}

class SettingsTabArgs {
  const SettingsTabArgs({
    this.key,
    required this.screenName,
    this.child,
  });

  final _i9.Key? key;

  final String screenName;

  final _i9.Widget? child;

  @override
  String toString() {
    return 'SettingsTabArgs{key: $key, screenName: $screenName, child: $child}';
  }
}

/// generated route for
/// [_i5.NamedScreen]
class PlayerUI extends _i8.PageRouteInfo<PlayerUIArgs> {
  PlayerUI({
    _i9.Key? key,
    required String screenName,
    _i9.Widget? child,
  }) : super(
          PlayerUI.name,
          path: 'player',
          args: PlayerUIArgs(
            key: key,
            screenName: screenName,
            child: child,
          ),
        );

  static const String name = 'PlayerUI';
}

class PlayerUIArgs {
  const PlayerUIArgs({
    this.key,
    required this.screenName,
    this.child,
  });

  final _i9.Key? key;

  final String screenName;

  final _i9.Widget? child;

  @override
  String toString() {
    return 'PlayerUIArgs{key: $key, screenName: $screenName, child: $child}';
  }
}

/// generated route for
/// [_i4.EmptyRouterPage]
class UserProfileRouter extends _i8.PageRouteInfo<void> {
  const UserProfileRouter({List<_i8.PageRouteInfo>? children})
      : super(
          UserProfileRouter.name,
          path: 'user',
          initialChildren: children,
        );

  static const String name = 'UserProfileRouter';
}

/// generated route for
/// [_i6.UserProfilePage]
class UserProfileRoute extends _i8.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({
    _i9.Key? key,
    required int userId,
  }) : super(
          UserProfileRoute.name,
          path: ':userId',
          args: UserProfileRouteArgs(
            key: key,
            userId: userId,
          ),
          rawPathParams: {'userId': userId},
        );

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({
    this.key,
    required this.userId,
  });

  final _i9.Key? key;

  final int userId;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i7.StoryDetailPage]
class StoryDetailRoute extends _i8.PageRouteInfo<StoryDetailRouteArgs> {
  StoryDetailRoute({
    _i9.Key? key,
    required int storyId,
  }) : super(
          StoryDetailRoute.name,
          path: ':storyId',
          args: StoryDetailRouteArgs(
            key: key,
            storyId: storyId,
          ),
          rawPathParams: {'storyId': storyId},
        );

  static const String name = 'StoryDetailRoute';
}

class StoryDetailRouteArgs {
  const StoryDetailRouteArgs({
    this.key,
    required this.storyId,
  });

  final _i9.Key? key;

  final int storyId;

  @override
  String toString() {
    return 'StoryDetailRouteArgs{key: $key, storyId: $storyId}';
  }
}
