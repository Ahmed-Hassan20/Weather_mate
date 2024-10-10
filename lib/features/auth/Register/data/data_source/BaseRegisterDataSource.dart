import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class BaseRegisterDataSource {
  Future<UserCredential?> register(BuildContext context, String name,
      String email, String password, String phoneNumber);
}
