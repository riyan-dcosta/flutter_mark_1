part of 'go_router_core.dart';

class DynamicPageRoute extends GoRouteData {
  const DynamicPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DynamicWidgetsPage();
}

class ProfilePageRoute extends GoRouteData {
  const ProfilePageRoute();

  Widget build(BuildContext context, GoRouterState state) =>
      const ProfilePage();
}

class EncryptionPageRoute extends GoRouteData {
  const EncryptionPageRoute();

  Widget build(BuildContext context, GoRouterState state) => const CryptoPage();
}
