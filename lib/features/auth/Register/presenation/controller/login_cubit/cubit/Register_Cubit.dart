import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_mate/core/Network/FirebaseUtils.dart';
import '../state/RegisterStates.dart';

class RegisterScreenCubit extends Cubit<RegisterStates> {
  // RegisterScreenViewModel({required this.registerUseCase})
  //     : super(RegisterInitialState());
  var nameController = TextEditingController(text: 'ahmed');
  var emailController = TextEditingController(text: 'ahmed1@gmail.com');
  var passwordController = TextEditingController(text: '123456');
  var confirmationController = TextEditingController(text: '123456');
  var phoneController = TextEditingController(text: '01012345678');
  var formKey = GlobalKey<FormState>();
  bool isObscure = true;

  RegisterScreenCubit() : super(RegisterInitialState());

  void register(BuildContext context) async {
    if (formKey.currentState?.validate() == true) {
      try {
        emit(RegisterLoadingState());
        var result = await FirebaseUtils.createUser(
            context,
            nameController.text,
            emailController.text,
            passwordController.text,
            phoneController.text);
        if (result?.user?.uid != null) {
                    emit(RegisterSuccessState());

        } else {emit(RegisterErrorState('error'));
        }
      } catch (e) {
        emit(RegisterErrorState("helppppppp"));

      }
    }
  }
}
