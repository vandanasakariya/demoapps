import 'package:demoapps/utils/navigation.dart';
import 'package:demoapps/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('asset/image/a.jpeg'),
              ),
              SizedBox(height: 30,),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Enter email",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: passController,
                decoration: InputDecoration(
                  hintText: "Enter password",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigation.pushNamed(
                    Routes.firstApi,
                  );
                },
                child: Text("submit"),
              ),
              TextButton(
                  onPressed: () {
                    Navigation.pushNamed(
                      Routes.signInPage,
                    );
                  },
                  child: Text("Sign in"))
            ],
          ),
        ),
      ),
    );
  }
}
