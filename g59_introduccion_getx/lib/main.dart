import 'package:flutter/material.dart';
import 'package:g59_introduccion_getx/screens/01-contador/contador_screen.dart';
import 'package:g59_introduccion_getx/screens/02-ciclos_de_vida/splash_screen.dart';
import 'package:g59_introduccion_getx/screens/03-actualizar_por_ids/contador_id_screen.dart';
import 'package:g59_introduccion_getx/screens/04-consumo_api/user_screen.dart';
import 'package:g59_introduccion_getx/screens/06-reactivos_observables/contador_reactivo_screen.dart';
import 'package:g59_introduccion_getx/screens/06-reactivos_observables/user_reactivo_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //home: const ContadorScreen(),
      //home: const SplashScreen(),
      //home: const ContadorIdScreen(),
      //home: const UserScreen(),
      //home: const ContadorReactivoScreen(),
      home: const UserReactivoScreen(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
