import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demoapps/main_page/service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../login_page/store_datalogin.dart';
import '../login_page/storedata_signin.dart';
import '../more_info/second_apomodal.dart';
import 'modal.dart';

class FirstApiController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getRupeeMethod();
    getSecondMeth();
  }

  Rx<FirstApiModal?> firstApiModalController = FirstApiModal().obs;
  Rx<SeconScreenApi?> secondApiModalController = SeconScreenApi().obs;
  RxBool loding = false.obs;

  Future<void> getRupeeMethod() async {
    loding.value = true;
    final result = await FirstApiService.FirstApiServiceMethod();
    if (result != null) {
      firstApiModalController.value = result;
      print("ssssss${firstApiModalController.value?.data?.first.title}");
    }
    loding.value = false;
  }

  Future<void> getSecondMeth() async {
    final result = await FirstApiService.SecondServiceMethod();
    if (result != null) {
      secondApiModalController.value = result;
      print("hhhhhhhh${secondApiModalController.value?.data?.synopsis}");
    }
  }


  static final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  static String userId = "";

  Future<void> insertUserTable(UserTable data) async {
    try {
      await firebaseFirestore
          .collection("loginPage")
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .set(
            data.toJson(),
            SetOptions(merge: true),
          )
          .then((value) => userId);

      print("oooooooooooooo${userId}");
    } catch (e) {
      print(e);
    }
  }
  Future<void> insertSignTable(SigninTable data) async {
    try {
      await firebaseFirestore
          .collection("signTable")
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .set(
        data.toJson(),
        SetOptions(merge: true),
      )
          .then((value) => userId);

      print("oooooooooooooo${userId}");
    } catch (e) {
      print(e);
    }
  }
}
