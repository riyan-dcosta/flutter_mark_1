import 'package:flutter/material.dart';
import 'package:flutter_mark_1/core/core_route/route_path/route_paths.dart';
import 'package:flutter_mark_1/features/dynamic_widgets/presentation/pages/dynamic_widget_page.dart';
import 'package:flutter_mark_1/features/home_page/presentation/pages/home_bottom_nav_page.dart';
import 'package:flutter_mark_1/features/profile_page/presentation/pages/profile_page.dart';
import 'package:go_router/go_router.dart';

part 'go_router_core.g.dart';

part 'go_router_core_objects.g.dart';

class GoRouterCore extends GoRouteData {
  GoRouterCore._();

  static final instance = GoRouter(
    initialLocation: RoutePaths.home,
    routes: $appRoutes,
  );
}

@TypedGoRoute<HomeRoute>(
  path: RoutePaths.home,
  routes: [
    TypedGoRoute<DynamicPageRoute>(path: RoutePaths.dynamic),
    TypedGoRoute<ProfilePageRoute>(path: RoutePaths.profile),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const HomeBottomNavPage();
}
