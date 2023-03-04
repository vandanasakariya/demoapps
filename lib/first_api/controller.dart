import 'package:demoapps/first_api/modal.dart';
import 'package:demoapps/first_api/service.dart';
import 'package:demoapps/second_api/second_apomodal.dart';
import 'package:get/get.dart';

class FirstApiController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getRupeeMethod();
    getSecondMeth();
  }

  Rx<FirstApiModal?> firstApiModalController = FirstApiModal().obs;
  Rx<SecondApiModal?> secondApiModalController = SecondApiModal().obs;

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
