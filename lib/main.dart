import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beamer_example/di/dependency_injection.dart';
import 'package:flutter_beamer_example/ui/pages/home/home_screen.dart';
import 'package:flutter_beamer_example/ui/pages/splash_screen.dart';

void main() {
  registerDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        SplashScreen.route: (context, state, data) => const SplashScreen(),
        HomeScreen.route: (context, state, data) => const HomeScreen(),
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      backButtonDispatcher: BeamerBackButtonDispatcher(delegate: routerDelegate),
    );
  }
}
