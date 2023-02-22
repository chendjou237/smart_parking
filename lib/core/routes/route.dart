import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:smart_parking/features/authentication/views/user_infos.dart';
import 'package:smart_parking/features/dashboard/views/dashboard_view.dart';
import '../../features/authentication/views/views.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginView();
      },
    ),
    GoRoute(
      path: '/verify-account',
      builder: (BuildContext context, GoRouterState state) {
        return const VerifyAccountView();
      },
    ),
    GoRoute(
      path: '/user-infos',
      builder: (BuildContext context, GoRouterState state) {
        return const UserInfosView();
      },
    ),
    GoRoute(
      path: '/dashboard',
      builder: (BuildContext context, GoRouterState state) {
        return const DashboardView();
      },
    ),
  ],
);
