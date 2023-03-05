import 'package:demoapps/utils/navigation.dart';
import 'package:demoapps/utils/routes.dart';
import 'package:flutter/material.dart';

import '../utils/sizeutils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passVisibility = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: SizeUtils.horizontalBlockSize *220,
            decoration: BoxDecoration(
              image: DecorationImage(

                image: AssetImage(
                  "asset/image/bg.jpeg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: SizeUtils.verticalBlockSize * 15),
                    child: Center(
                      child: CircleAvatar(
                        radius: SizeUtils.verticalBlockSize * 9,
                        backgroundImage: AssetImage('asset/image/a.jpeg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeUtils.verticalBlockSize * 3,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeUtils.horizontalBlockSize * 1,
                        horizontal: SizeUtils.horizontalBlockSize * 2),
                    child: Text(
                      "Enter Email id :",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeUtils.verticalBlockSize * 1,
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: SizeUtils.fSize_16()),
                      controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        hintText: "Enter email",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeUtils.horizontalBlockSize * 3,
                        horizontal: SizeUtils.horizontalBlockSize * 2),
                    child: Text(
                      "Enter password :",
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: SizeUtils.verticalBlockSize * 0),
                    child: TextFormField(
                      style: TextStyle(fontSize: SizeUtils.fSize_16()),
                      obscureText: _passVisibility,
                      controller: passController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        suffixIcon: IconButton(
                          icon: _passVisibility
                              ? Icon(Icons.visibility_off,
                                  color: Colors.black,
                                  size: SizeUtils.horizontalBlockSize * 5.5)
                              : Icon(Icons.visibility, color: Colors.black),
                          onPressed: () {
                            _passVisibility = !_passVisibility;

                            setState(() {});
                          },
                        ),
                        hintText: "Enter password",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: SizeUtils.verticalBlockSize * 4),
                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          minimumSize: Size(100, 40),
                        ),
                        onPressed: () {
                          Navigation.pushNamed(
                            Routes.firstApi,
                          );
                          print("dffd");
                        },
                        child: Text("Login"),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("don't have an account ?",
                          style: TextStyle(color: Colors.grey.shade600)),
                      Center(
                        child: TextButton(
                            onPressed: () {
                              Navigation.pushNamed(
                                Routes.signInPage,
                              );
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                  fontSize: SizeUtils.fSize_16(),
                                  decoration: TextDecoration.underline),
                            )),
                      ),
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
}
