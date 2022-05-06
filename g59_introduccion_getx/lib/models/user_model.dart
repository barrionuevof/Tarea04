import 'package:get/get.dart';

class UserModel {
  UserModel({
    this.id,
    this.email,
    this.firstName,
    this.descripcion,
    this.lastName,
    this.avatar,
  });

  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? descripcion;
  String? avatar;
  RxBool isFavorite = RxBool(false);

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        descripcion:
            "Hola este es un fragmento aumentado al model como ejemplo, este exto no es consumido de un webservices",
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
