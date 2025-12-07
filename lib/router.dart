import 'package:dart_scorer/views/cricket_view.dart';
import 'package:dart_scorer/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomeView();
      },
      routes: [
        GoRoute(
          path: '/cricket',
          builder: (BuildContext context, GoRouterState state) {
            return CricketView();
          },
        ),
      ],
    ),
  ],
);
