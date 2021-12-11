import 'package:di_assets/src/app/global/globals.dart';
import 'package:di_assets/src/app/global/providers/theme_provider.dart';
import 'package:di_assets/src/app/pages/dashboard/dashboard_page.dart';
import 'package:di_assets/src/app/pages/home/home_page.dart';
import 'package:di_assets/src/app/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:layout/layout.dart';
import 'package:sizer/sizer.dart';

import 'src/app/pages/main_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //get theme from provider
    final _theme = ref.watch(themeProvider);
    //handle app routes
    final _router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const MainPage(),
          routes: [
            GoRoute(
              path: 'home',
              builder: (context, state) => const HomePage(uri: 'home'),
            ),
            GoRoute(
              path: 'dashboard',
              builder: (context, state) => const DashBoardPage(
                uri: 'dashboard',
              ),
            ),
            GoRoute(
              path: 'profile',
              builder: (context, state) => const ProfilePage(uri: 'profile'),
            ),
          ],
        ),
      ],
    );
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Layout(
          child: MaterialApp.router(
            routeInformationParser: _router.routeInformationParser,
            routerDelegate: _router.routerDelegate,
            title: 'Flutter Demo',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: _theme.currentTheme,
          ),
        );
      },
    );
  }
}
