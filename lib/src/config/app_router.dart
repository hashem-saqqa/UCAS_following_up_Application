import 'package:auto_route/auto_route.dart';
import 'package:clean_arch/main.dart';
import 'package:flutter/foundation.dart';

import '../presentation/views/auth_sreen/auth_screen_view.dart';
import '../presentation/views/splash_view/splash_view.dart';
import '../presentation/views/top_headline_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter{
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: Splash.page,initial: true),
    AutoRoute(page: MyHomeRoute.page,initial: false),
    AutoRoute(page: BreakingNews.page,initial: false),
    AutoRoute(page: AuthScreen.page,initial: false)
  ];
}
