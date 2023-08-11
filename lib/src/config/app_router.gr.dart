// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthScreen.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthScreenView(),
      );
    },
    BreakingNews.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BreakingNewsView(),
      );
    },
    Home.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child:  HomeView(),
      );
    },
    LoginScreen.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreenView(),
      );
    },
    MyHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MyHomePage(),
      );
    },
    Splash.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashView(),
      );
    },
  };
}

/// generated route for
/// [AuthScreenView]
class AuthScreen extends PageRouteInfo<void> {
  const AuthScreen({List<PageRouteInfo>? children})
      : super(
          AuthScreen.name,
          initialChildren: children,
        );

  static const String name = 'AuthScreen';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BreakingNewsView]
class BreakingNews extends PageRouteInfo<void> {
  const BreakingNews({List<PageRouteInfo>? children})
      : super(
          BreakingNews.name,
          initialChildren: children,
        );

  static const String name = 'BreakingNews';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeView]
class Home extends PageRouteInfo<void> {
  const Home({List<PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreenView]
class LoginScreen extends PageRouteInfo<void> {
  const LoginScreen({List<PageRouteInfo>? children})
      : super(
          LoginScreen.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreen';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyHomePage]
class MyHomeRoute extends PageRouteInfo<void> {
  const MyHomeRoute({List<PageRouteInfo>? children})
      : super(
          MyHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashView]
class Splash extends PageRouteInfo<void> {
  const Splash({List<PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const PageInfo<void> page = PageInfo<void>(name);
}
