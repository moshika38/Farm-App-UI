import 'package:farm_management_app/screens/account_screen.dart';
import 'package:farm_management_app/screens/chat_screen.dart';
import 'package:farm_management_app/screens/forgot_password_screen.dart';
import 'package:farm_management_app/screens/home_screen.dart';
import 'package:farm_management_app/screens/login_screen.dart';
import 'package:farm_management_app/screens/main_screen.dart';
import 'package:farm_management_app/screens/massage_screen.dart';
import 'package:farm_management_app/screens/register_screen.dart';
import 'package:farm_management_app/screens/todo_screen.dart';
import 'package:farm_management_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutings {
  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  static final router = GoRouter(
    initialLocation: "/start",
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: "/start",
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
                path: '/chat',
                builder: (context, state) => const ChatScreen(),
              ),
              GoRoute(
                path: '/login',
                builder: (context, state) => const LoginScreen(),
              ),
              GoRoute(
                path: '/register',
                builder: (context, state) => const RegisterScreen(),
              ),
              GoRoute(
                path: '/forgot',
                builder: (context, state) => const ForgotPasswordScreen(),
              ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainScreen(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                builder: (context, state) => const HomeScreen(),
              ),
              
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/todo',
                builder: (context, state) => const TodoScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/massage',
                builder: (context, state) => const MassageScreen(),
              ),
              
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => const AccountScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
