import 'package:g59_introduccion_getx/screens/01-contador/contador_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    print("onInit()");
    super.onInit();
  }

  @override
  void onReady() {
    print("onReady()");
    Future.delayed(const Duration(seconds: 3), () {
      //Get.to(const ContadorScreen());
      Get.off(() => const ContadorScreen());
    });

    super.onReady();
  }

  @override
  void onClose() {
    print("onClose()");
    super.onClose();
  }
}
