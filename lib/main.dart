import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sr_flutter/pages/R76.dart';
import 'package:sr_flutter/pages/comunidad.dart';
import 'package:sr_flutter/pages/home.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home(
          title: '',
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'sponsors',
          builder: (BuildContext context, GoRouterState state) {
            return Container();
          },
        ),
        GoRoute(
          path: 'R76',
          builder: (BuildContext context, GoRouterState state) {
            return R76();
          },
        ),
        GoRoute(
          path: 'comunidad',
          builder: (BuildContext context, GoRouterState state) {
            return const Comunidad();
          },
        ),
      ],
    ),
  ],
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
