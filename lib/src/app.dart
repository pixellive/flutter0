import 'package:flutter/material.dart';
import 'package:flutter0/src/pages/login/login_page.dart';
import 'package:flutter0/src/pages/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return MaterialApp(
      title: "Demo App",
      routes: AppRoute.all,
      home: LoginPage(),
    );
  }
}
