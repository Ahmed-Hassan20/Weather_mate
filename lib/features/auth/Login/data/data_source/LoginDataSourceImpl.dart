import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:weather_mate/core/Network/FireBase/FirebaseUtils.dart';
import 'package:weather_mate/features/auth/Login/domain/repositories/BaseLoginDataSource.dart';

class LoginDataSourceImpl implements BaseLoginDataSource {
  FirebaseUtils firebaseUtils;
  LoginDataSourceImpl({required this.firebaseUtils});
  @override
  Future<UserCredential?> signIn(
    BuildContext context,
    String email,
    String password,
  ) async {
    var response = await firebaseUtils.login(context, email, password);
    return response;
  }
}
