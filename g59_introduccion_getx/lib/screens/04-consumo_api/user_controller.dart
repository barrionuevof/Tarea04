import 'package:dio/dio.dart';
import 'package:g59_introduccion_getx/screens/05-pasa_datos/datail_screen.dart';
import 'package:g59_introduccion_getx/screens/05-pasa_datos/detail_user_scrren.dart';
import 'package:get/get.dart';

import '../../models/user_model.dart';

class UserControler extends GetxController {
  @override
  void onInit() {
    httpLoadApi();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  List<UserModel> users = [];
  httpLoadApi() async {
    var dio = Dio();
    final response = await dio.get(
      'https://reqres.in/api/users',
      queryParameters: {
        "page": 1,
      },
    );

    users = (response.data["data"] as List)
        .map((json) => UserModel.fromJson(json))
        .toList();

    update(["users"]);
  }

  goDetail(UserModel user) {
    Map<String, dynamic> arg = {
      "Id": 1,
      "Nombre": "Nombre aqui",
      "Price": 12.2,
      "User": user,
    };

    //Get.to(() => const DetailScreen(), arguments: user);
    Get.to(() => const DetailScreen(), arguments: arg);
    // Get.to(
    //   () => DatailUserScreen(user: user),
    // );
  }
}
