import 'package:g59_introduccion_getx/models/user_model.dart';
import 'package:g59_introduccion_getx/screens/04-consumo_api/user_controller.dart';
import 'package:get/get.dart';

class DatailController extends GetxController {
  UserModel user = UserModel();

  Map<String, dynamic> getArg = {};

  @override
  void onInit() {
    user = Get.arguments as UserModel;
    //getArg = Get.arguments as Map<String, dynamic>;
    //user = getArg["User"];

    print(getArg);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    print("onClose() DetailCOntroller");
    super.onClose();
  }
}
