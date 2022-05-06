import 'package:flutter/material.dart';
import 'package:g59_introduccion_getx/screens/03-actualizar_por_ids/contador_id_controller.dart';
import 'package:get/get.dart';

class ContadorIdScreen extends StatelessWidget {
  const ContadorIdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContadorIdController>(
      init: ContadorIdController(),
      builder: (controller) {
        print("Didujando Widgets");
        return Scaffold(
          appBar: AppBar(
            title: const Text("Contador Getx Id"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                GetBuilder<ContadorIdController>(
                  id: "counter",
                  builder: (_) {
                    print("Dibujando Text");
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
      },
    );
  }
}
