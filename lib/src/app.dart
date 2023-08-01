import 'package:flutter/material.dart';
import 'package:flutter0/src/bloc/login/login_bloc.dart';
import 'package:flutter0/src/pages/login/login_page.dart';
import 'package:flutter0/src/pages/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider(create: (context) => LoginBloc());
    return MultiBlocProvider(
        providers: [loginBloc],
        child: MaterialApp(
          title: "Demo App",
          routes: AppRoute.all,
          home: LoginPage(),
        ));
  }
}
