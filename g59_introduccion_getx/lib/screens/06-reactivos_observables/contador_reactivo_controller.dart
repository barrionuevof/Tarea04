import 'package:get/get.dart';

class ContadorReactivoController extends GetxController {
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

  //Variables
  //RxString names = RxString("");
  RxInt counter = RxInt(0);

  void increment() {
    counter.value++;
  }
}
