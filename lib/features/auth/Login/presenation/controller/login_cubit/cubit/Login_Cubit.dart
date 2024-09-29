
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/login_state.dart';

class LoginScreenCubit extends Cubit<LoginStates> {
  // RegisterScreenViewModel({required this.registerUseCase})
  //     : super(RegisterInitialState());
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var formkey = GlobalKey<FormState>();
  bool isObscure = true;

  LoginScreenCubit() : super(LoginInitialState());
  // RegisterUseCase registerUseCase ;

  void register() async {
    if (formkey.currentState?.validate() == true) {
      emit(LoginLoadingState());
      // var either = await registerUseCase.invoke(
      //     nameController.text,
      //     emailController.text,
      //     passwordController.text,
      //     confirmationController.text,
      //     phoneController.text);
      // either.fold((l){
      //   emit(RegisterErrorState(errorMessage: l.errorMessage));
      // }, (response){
      //   emit(RegisterSuccessState(response: response));
      // });
    }
  }
}
