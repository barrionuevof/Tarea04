import 'package:flutter/material.dart';
import 'package:g59_introduccion_getx/models/user_model.dart';

class DatailUserScreen extends StatelessWidget {
  const DatailUserScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Valores por constructor"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(user.avatar ?? ""),
            ),
            Divider(),
            Text("${user.firstName} ${user.lastName}"),
            Text("${user.email}"),
          ],
        ),
      ),
    );
  }
}
