import 'package:flutter/material.dart';
import 'package:g59_introduccion_getx/screens/06-reactivos_observables/contador_reactivo_controller.dart';
import 'package:get/get.dart';

class ContadorReactivoScreen extends StatelessWidget {
  const ContadorReactivoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContadorReactivoController>(
        init: ContadorReactivoController(),
        builder: (controller) {
          print("build()");
          return Scaffold(
            appBar: AppBar(
              title: const Text("Reactivos"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  // Obx(
                  //   () => Text(
                  //     '${controller.counter}',
                  //     style: Theme.of(context).textTheme.headline4,
                  //   ),
                  // ),
                  Obx(
                    () {
                      print("Dibujado Text");
                      return Text(
                        '${controller.counter}',
                        style: Theme.of(context).textTheme.headline4,
                      );
                    },
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: controller.increment,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          );
        });
  }
}
