import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_mate/features/auth/Login/domain/repositories/BaseLoginRepository.dart';
import '../state/login_state.dart';

class LoginScreenCubit extends Cubit<LoginStates> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  final BaseLoginRepository loginRepository = GetIt.instance<BaseLoginRepository>();
  LoginScreenCubit() : super(LoginInitialState());

  Future<void> login(BuildContext context) async {
    if (formKey.currentState?.validate() == true) {
      emit(LoginLoadingState());

      try {
        // Perform the sign-in logic here
        var result = await loginRepository.signIn(
          context,
          emailController.text,
          passwordController.text,
        );

        if (result?.user != null) {
          emit(LoginSuccessState());
        } else {
          emit(LoginErrorState('Sign in failed'));
        }
      } catch (e) {
        emit(LoginErrorState("An error occurred during sign in"));
      }
    }
  }
}
