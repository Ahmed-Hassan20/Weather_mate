
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_mate/features/auth/Register/domain/repositories/BaseRegisterRepository.dart';
import '../state/RegisterStates.dart';

class RegisterScreenCubit extends Cubit<RegisterStates> {

  var nameController = TextEditingController(text: 'ahmed');
  var emailController = TextEditingController(text: 'ahmed1@gmail.com');
  var passwordController = TextEditingController(text: '123456');
  var confirmationController = TextEditingController(text: '123456');
  var phoneController = TextEditingController(text: '01012345678');
  var formKey = GlobalKey<FormState>();
  bool isObscure = true;
  final BaseRegisterRepository registerRepository = GetIt.instance<BaseRegisterRepository>();

  RegisterScreenCubit() : super(RegisterInitialState());

  Future<void> register(BuildContext context) async {
    if (formKey.currentState?.validate() == true) {
      try {
        emit(RegisterLoadingState());
        print('Before Firebase call');

        var result = await registerRepository.register(
            context,
            nameController.text,
            emailController.text,
            passwordController.text,
            phoneController.text);
        print('After Firebase call');

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
