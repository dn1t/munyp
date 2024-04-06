import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'colors/ui_colors.dart';
import 'components/layout/root.dart';
import 'pages/home.dart';

void main() {
  runApp(const ProviderScope(child: MunypApp()));
}

final rootNavKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: rootNavKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: '홈',
      pageBuilder: (context, state) =>
          NoTransitionPage(child: HomePage(state: state)),
    ),
  ],
);

class MunypApp extends StatelessWidget {
  const MunypApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'munyp',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      builder: (context, child) => Root(child: child),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: UIColors.iris,
          brightness: Brightness.light,
          background: UIColors.gray.step1,
        ),
        canvasColor: UIColors.transparent,
        fontFamily: 'Pretendard',
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: UIColors.dark.iris,
          brightness: Brightness.dark,
          background: UIColors.dark.gray.step1,
        ),
        canvasColor: UIColors.transparent,
        fontFamily: 'Pretendard',
      ),
    );
  }
}
