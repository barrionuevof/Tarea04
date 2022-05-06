import 'package:get/get.dart';

class ContadorIdController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  int counter = 0;
  void increment() {
    counter++;
    update(["counter"]);
  }
}
