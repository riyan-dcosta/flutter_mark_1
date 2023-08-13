// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'go_router_core.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/crypto',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'dynamic',
          factory: $DynamicPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'crypto',
          factory: $EncryptionPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'profile',
          factory: $ProfilePageRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/crypto',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DynamicPageRouteExtension on DynamicPageRoute {
  static DynamicPageRoute _fromState(GoRouterState state) =>
      const DynamicPageRoute();

  String get location => GoRouteData.$location(
        '/crypto/dynamic',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $EncryptionPageRouteExtension on EncryptionPageRoute {
  static EncryptionPageRoute _fromState(GoRouterState state) =>
      const EncryptionPageRoute();

  String get location => GoRouteData.$location(
        '/crypto/crypto',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfilePageRouteExtension on ProfilePageRoute {
  static ProfilePageRoute _fromState(GoRouterState state) =>
      const ProfilePageRoute();

  String get location => GoRouteData.$location(
        '/crypto/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
