import 'package:demoapps/main_page/service.dart';
import 'package:get/get.dart';

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

  Future<void> getRupeeMethod() async {
    final result = await FirstApiService.FirstApiServiceMethod();
    if (result != null) {
      firstApiModalController.value = result;
      print("ssssss${firstApiModalController.value?.data?.first.title}");
    }
  }

  Future<void> getSecondMeth() async {
    final result = await FirstApiService.SecondServiceMethod();
    if (result != null) {
      secondApiModalController.value = result;
      print("hhhhhhhh${secondApiModalController.value?.data?.synopsis}");
    }
  }
}
