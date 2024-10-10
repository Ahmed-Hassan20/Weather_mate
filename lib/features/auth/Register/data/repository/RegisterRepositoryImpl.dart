import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:weather_mate/features/auth/Register/data/data_source/BaseRegisterDataSource.dart';

import '../../domain/repositories/BaseRegisterRepository.dart';

class RegisterRepositoryImpl implements BaseRegisterRepository {
  BaseRegisterDataSource registerDataSource;
  RegisterRepositoryImpl({required this.registerDataSource});
  @override
  Future<UserCredential?> register(BuildContext context, String name,
      String email, String password, String phoneNumber) async {
    var response = await registerDataSource.register(
        context, name, email, password, phoneNumber);
    return response;
  }
}
