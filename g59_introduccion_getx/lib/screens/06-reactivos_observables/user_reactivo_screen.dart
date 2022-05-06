import 'package:flutter/material.dart';
import 'package:g59_introduccion_getx/screens/06-reactivos_observables/user_reactivo_controller.dart';
import 'package:get/get.dart';

class UserReactivoScreen extends StatelessWidget {
  const UserReactivoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserReactivoController>(
      init: UserReactivoController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Users reactivo"),
            actions: [
              Obx(() {
                return CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("${controller.counterFavorite}"),
                );
              }),
            ],
          ),
          body: Obx(
            () => ListView.builder(
              shrinkWrap: true,
              itemCount: controller.users.length,
              itemBuilder: (context, index) {
                final user = controller.users[index];
                return ListTile(
                  onTap: () {
                    controller.goDetail(user);
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar ?? ""),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      controller.isFavoriteItem(index);
                    },
                    child: Obx(
                      () => user.isFavorite.value == true
                          ? Icon(Icons.favorite, color: Colors.pink)
                          : Icon(Icons.favorite_border),
                    ),
                  ),
                  title: Text("${user.firstName} ${user.lastName}"),
                  subtitle: Text("${user.email}"),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
