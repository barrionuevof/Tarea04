import 'package:flutter/material.dart';
import 'package:g59_introduccion_getx/screens/04-consumo_api/user_controller.dart';
import 'package:get/get.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserControler>(
      init: UserControler(),
      builder: (controller) {
        print("Dibujando widgets - UserScreen");
        return Scaffold(
          appBar: AppBar(
            title: const Text("Users"),
          ),
          body: Column(
            children: [
              GetBuilder<UserControler>(
                id: "users",
                builder: (_) {
                  print("Dibujando ListView - UserScreen");
                  return ListView.builder(
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
                        title: Text("${user.firstName} ${user.lastName}"),
                        subtitle: Text("${user.email}"),
                      );
                    },
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }
}
