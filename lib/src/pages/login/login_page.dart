import 'package:flutter/material.dart';
import 'package:flutter0/src/pages/bloc/login/login_bloc.dart';
import 'package:flutter0/src/pages/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  int counter = 0;

  @override
  void initState() {
    super.initState();
    _usernameController.text = "admin";
    _passwordController.text = "1234";
  }

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(32.0),
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ..._buildTextFields(),
                  SizedBox(
                    height: 32,
                  ),
                  ..._buildButtons(),
                  Row(
                    children: [
                      Text("Debug: ${context.read<LoginBloc>().state.count}"),
                      // sepation of concern
                      IconButton(
                          onPressed: _handleClickAdd, icon: Icon(Icons.add)),
                      IconButton(
                          onPressed: _handleClickRemove,
                          icon: Icon(Icons.remove)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleClickLogin() {
    // print(
    //     ":: Dev Login: with ${_usernameController.text}, ${_passwordController.text}");
    Navigator.pushNamed(context, AppRoute.home);
  }

  void _handleClickReset() {
    _usernameController.text = "";
    _passwordController.text = "";
  }

  void _handleClickRegister() {
    Navigator.pushNamed(context, AppRoute.register);
  }

  _buildTextFields() {
    return [
      TextField(
        controller: _usernameController,
        decoration: InputDecoration(labelText: "Username"),
      ),
      TextField(
        controller: _passwordController,
        decoration: InputDecoration(labelText: "Password"),
      ),
    ];
  }

  _buildButtons() {
    return [
      ElevatedButton(onPressed: _handleClickLogin, child: Text("Sign In")),
      OutlinedButton(onPressed: _handleClickRegister, child: Text("Register")),
      OutlinedButton(onPressed: _handleClickReset, child: Text("Reset")),
    ];
  }

  void _handleClickAdd() {
    setState(() {
      counter++;
    });
  }

  void _handleClickRemove() {
    setState(() {
      counter--;
    });
  }
}
