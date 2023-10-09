import 'package:flutter/material.dart';
import 'package:pertemuan6/pages/main_page.dart';
import 'package:pertemuan6/pages/second_page.dart';
import 'package:pertemuan6/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       onGenerateRoute: RouteGenerator.generateRoute);
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: my_routers,
    );
  }
}
