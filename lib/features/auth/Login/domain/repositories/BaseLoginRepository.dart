import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class BaseLoginRepository {
  Future<UserCredential?> signIn(
    BuildContext context,
    String email,
    String password,
  );
}
