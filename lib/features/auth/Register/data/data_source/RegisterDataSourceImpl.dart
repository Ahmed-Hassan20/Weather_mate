import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:weather_mate/core/Network/FireBase/FirebaseUtils.dart';
import 'BaseRegisterDataSource.dart';

class RegisterDataSourceImpl implements BaseRegisterDataSource {
  FirebaseUtils firebaseUtils;
  RegisterDataSourceImpl({required this.firebaseUtils});
  @override
  Future<UserCredential?> register(
      BuildContext context, String name,
      String email, String password, String phoneNumber
  ) async {
    var response = await firebaseUtils.register(context,name, email, password,phoneNumber);
    return response;
  }
}
