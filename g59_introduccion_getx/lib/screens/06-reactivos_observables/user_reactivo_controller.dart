import 'package:dio/dio.dart';
import 'package:g59_introduccion_getx/models/user_model.dart';
import 'package:g59_introduccion_getx/screens/05-pasa_datos/datail_screen.dart';
import 'package:get/get.dart';

class UserReactivoController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    httpLoadApi();
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  RxList<UserModel> users = RxList<UserModel>([]);
  RxInt counterFavorite = RxInt(0);
  httpLoadApi() async {
    var dio = Dio();
    final response = await dio.get(
      'https://reqres.in/api/users',
      queryParameters: {
        "page": 1,
      },
    );

    users.value = (response.data["data"] as List)
        .map((json) => UserModel.fromJson(json))
        .toList();
  }

  isFavoriteItem(int index) {
    users[index].isFavorite.value = !users[index].isFavorite.value;
    counterFavorite.value =
        users.where((item) => item.isFavorite.value == true).length;
  }

  goDetail(UserModel user) {
    Get.to(() => const DetailScreen(),
        arguments: user,
        transition: Transition.leftToRightWithFade,
        duration: const Duration(seconds: 3));
  }
}
