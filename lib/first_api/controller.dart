import 'package:demoapps/first_api/modal.dart';
import 'package:demoapps/first_api/service.dart';
import 'package:get/get.dart';

class FirstApiController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  Rx<FirstApiModal?> firstApiModalController = FirstApiModal().obs;

  Future<void> getRupeeMethod() async {
    final result = await FirstApiService.FirstApiServiceMethod();
    if (result != null) {
      firstApiModalController.value = result;
    }
  }
}
