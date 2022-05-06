import 'package:flutter/material.dart';
import 'package:g59_introduccion_getx/screens/05-pasa_datos/datail_controller.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DatailController>(
      init: DatailController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Valores por argumento"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(controller.user.avatar ?? ""),
                ),
                Divider(),
                Text(
                    "${controller.user.firstName} ${controller.user.lastName}"),
                Text("${controller.user.email}"),
                Divider(),
                Text("${controller.user.descripcion}"),
              ],
            ),
          ),
        );
      },
    );
  }
}
