import 'package:demoapps/utils/navigation.dart';
import 'package:demoapps/utils/routes.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController moController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Scaffold(
      body: Column(
          children: [
            TextFormField(
              controller: nameController,
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
              controller: emailController,
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
            TextFormField(
              controller: moController,
              decoration: InputDecoration(
                hintText: "Enter Mobile No",
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
          ],
      ),
    ),
        ));
  }
}
