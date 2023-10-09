import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pertemuan6/pages/error_page.dart';
import 'package:pertemuan6/pages/main_page.dart';
import 'package:pertemuan6/pages/second_page.dart';

// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case '/':
//         return MaterialPageRoute(builder: (_) => const MainPage());
//       case '/second':
//         return MaterialPageRoute(builder: (_) => const SecondPage());
//       default:
//         return MaterialPageRoute(builder: (_) => const ErrorPage());
//     }
//   }
// }

final my_routers = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const MainPage(),
      ),
      GoRoute(
        path: "/second/:title",
        builder: (context, state) => SecondPage(state),
      ),
    ],
    errorBuilder: (context, state) => const ErrorPage(),
    debugLogDiagnostics: true);
