import 'dart:async';
import 'package:demoapps/utils/navigation.dart';
import 'package:demoapps/utils/routes.dart';
import 'package:demoapps/utils/sizeutils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      const Duration(seconds: 3),
      () {
        // final credential = GoogleSign().signInWithGoogle();
        //log("credential-------${credential}");
        FirebaseAuth.instance.currentUser == null
            ? Navigation.pushNamed(Routes.loginPage)
            : Navigation.pushNamed(Routes.firstApi);
        // Navigation.pushNamed(Routes.bottomPage);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(

            child: Image.asset(
              "asset/image/sp.png",
              fit: BoxFit.cover,
              alignment: Alignment.center,
              // height: SizeUtils.verticalBlockSize * 100,
            ),
          ),
        ),
      ),
    );
  }
}
