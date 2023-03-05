import 'package:demoapps/utils/navigation.dart';
import 'package:demoapps/utils/routes.dart';
import 'package:demoapps/utils/sizeutils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool _passVisibility = true;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController moController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: SizeUtils.horizontalBlockSize * 500,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/image/bg.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeUtils.horizontalBlockSize * 8,
                vertical: SizeUtils.verticalBlockSize * 3),
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: SizeUtils.horizontalBlockSize * 20),
                  child: Text("Register",
                      style: TextStyle(
                          fontSize: SizeUtils.fSize_40(),
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: SizeUtils.verticalBlockSize * 6),
                  child: TextFormField(
                    controller: nameController,
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
                  padding:
                      EdgeInsets.only(top: SizeUtils.verticalBlockSize * 2),
                  child: TextFormField(
                    obscureText: _passVisibility,
                    controller: emailController,
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
                  padding: EdgeInsets.only(
                    top: SizeUtils.verticalBlockSize * 2,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10)
                    ], // Only numbers
                    controller: moController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      hintText: "Enter Mobile No",
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
                      EdgeInsets.only(top: SizeUtils.verticalBlockSize * 7),
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
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: SizeUtils.fSize_17(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
