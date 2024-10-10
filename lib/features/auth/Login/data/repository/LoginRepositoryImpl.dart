import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:weather_mate/features/auth/Login/domain/repositories/BaseLoginDataSource.dart';
import 'package:weather_mate/features/auth/Login/domain/repositories/BaseLoginRepository.dart';

class LoginRepositoryImpl implements BaseLoginRepository {
  BaseLoginDataSource loginDataSource;
  LoginRepositoryImpl({required this.loginDataSource});
  @override
  Future<UserCredential?> signIn(
    BuildContext context,
    String email,
    String password,
  ) async {
    var response = await loginDataSource.signIn(context, email, password);
    return response;
  }
}
