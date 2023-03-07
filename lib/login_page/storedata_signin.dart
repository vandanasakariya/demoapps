import 'package:cloud_firestore/cloud_firestore.dart';

class SigninTable {

  String? Id;
  String? email;
  String? pass;
  String? mono;


  SigninTable({

    this.Id,
    this.email,
    this.pass,
    this.mono,

  }) {}

  SigninTable.fromDocumentSnapshot(
      DocumentSnapshot documentSnapshot,
      ) {
    Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
    Id = data["Id"] ?? '';
    email = data["email"] ?? '';
    pass = data["pass"] ?? '';
    mono = data["mono"] ?? '';

  }
  SigninTable.fromJson(Map<String, dynamic> json) {
    Id = json["Id"] ?? '';
    email = json["email"] ?? '';
    pass = json["pass"] ?? '';
    mono = json["mono"] ?? '';

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = Id;
    data['email'] = email;
    data['pass'] = pass;
    data['mono'] = mono;


    return data;
  }
}