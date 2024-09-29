import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

class FirebaseUtils{
   static final auth = FirebaseAuth.instance;
 static Future<UserCredential?>  createUser(
     BuildContext context,
      String name,
      String email,
      String password,
     String phoneNumber
      ) async {
    // context.loaderOverlay.show();
    try {
      final userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await userCredential.user?.updateDisplayName(name);
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .set(
        {
          'username': name,
          'email': email,
          'phoneNumber': phoneNumber,
        },
      );
      return userCredential;
   } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showMsg(context, 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showMsg(context, 'The account already exists for that email.');
      } else {
        showMsg(context, e.message.toString());
      }
    }
    return null;
    // context.loaderOverlay.hide();
  }


  static showMsg(context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
}