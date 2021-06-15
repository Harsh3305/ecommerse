import 'package:ecommerse/utils/my_routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username = "";
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/bridge.png",
                fit: BoxFit.cover,
                height: 500,
                width: 500,
              ),
              Text(
                "Welcome $_username",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                ),
              ),
              TextField(
                onChanged: (value) {
                  _username = value;
                  setState(() {});
                },
                decoration: InputDecoration(
                    hintText: "Enter Username", labelText: "UserName"),
              ),
              TextField(
                obscureText: true,
                onChanged: (value) => {_password = value},
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0)),
              ElevatedButton(
                onPressed: () {
                  print("Hi");
                  login(_username, _password, context);
                },
                style: TextButton.styleFrom(
                    minimumSize: Size(200, 50),
                    shadowColor: Colors.blue,
                    backgroundColor: Colors.lightBlue),
                child: Text("Login"),
              )
            ],
          ),
        ),
      ),
      color: Colors.white,
    );
  }

  void login(String username, String password, BuildContext context) {
    // print(username + " " + password);
    Navigator.pushNamed(context, MyRoutes.homeRoute);
  }
}
