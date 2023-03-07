import 'package:demoapps/login_page/storedata_signin.dart';
import 'package:demoapps/utils/navigation.dart';
import 'package:demoapps/utils/routes.dart';
import 'package:demoapps/utils/sizeutils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../main_page/controller.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool _passVisibility = true;
  final FirstApiController firstApiController = Get.find();

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController moController = TextEditingController();
  final formKey1 = GlobalKey<FormState>();

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
            child: Form(
              key: formKey1,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: SizeUtils.horizontalBlockSize * 20),
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
                      validator: (val) => val!.isEmpty ||
                              !val.contains("@") ||
                              !val.contains(".")
                          ? "enter a valid eamil"
                          : null,
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
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: SizeUtils.verticalBlockSize * 2),
                    child: TextFormField(
                      validator: (pass) {
                        if (pass!.isEmpty) {
                          return "Please Enter Password";
                        } else if (pass.length < 8) {
                          return "Password must be atleast 8 characters long";
                        }
                      },
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
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
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
                      validator: (mono) {
                        if (mono == null) {
                          return "Enter Mobile No";
                        } else if (mono.length <= 9) {
                          return "Enter valid number";
                        }
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      // Only numbers
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
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
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
                      onPressed: () async {
                        SigninTable signinTable = SigninTable(
                            mono: moController.text,
                            email: emailController.text,
                            pass: passController.text,
                            Id: FirebaseAuth.instance.currentUser?.uid);
                        await firstApiController.insertSignTable(signinTable);

                        if (formKey1.currentState!.validate()) {
                          Navigation.pushNamed(
                            Routes.firstApi,
                          );
                        }
                        /*Navigation.pushNamed(
                          Routes.firstApi,
                        );*/
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
      ),
    ));
  }
}
