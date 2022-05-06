import 'package:flutter/material.dart';
import 'package:g59_introduccion_getx/screens/01-contador/contador_controller.dart';
import 'package:get/get.dart';

class ContadorScreen extends StatelessWidget {
  const ContadorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContadorController>(
      init: ContadorController(),
      builder: (controller) {
        print("build()");
        return Scaffold(
          appBar: AppBar(
            title: const Text("Contador con GETX"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headline4,
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
      },
    );
  }
}
