import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/Utils/assets.dart';
import '../controller/login_cubit/cubit/Register_Cubit.dart';
import 'CustomTextFormField.dart';

class SignUpForm extends StatelessWidget {
final TextEditingController controller;

  const SignUpForm({super.key, required this.controller});
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
              hintText: 'Enter your Email',
              labelText: 'Email',
              suffixIcon: AppAssets.mailIcon,
              controller: controller,
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return 'Please Enter User Name';
                }
                return null;
              },),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: TextFormField(
              controller: controller,
              onSaved: (password) {},
              onChanged: (password) {},
              obscureText: true,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  hintText: "Enter your password",
                  labelText: "Password",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintStyle: const TextStyle(color: Color(0xFF757575)),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  suffix: SvgPicture.string(
                    AppAssets.lockIcon,
                  ),
                  border: authOutlineInputBorder,
                  enabledBorder: authOutlineInputBorder,
                  focusedBorder: authOutlineInputBorder.copyWith(
                      borderSide: const BorderSide(color: Color(0xFFFF7643)))),
            ),
          ),
          TextFormField(
            onSaved: (password) {},
            onChanged: (password) {},
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Enter your password",
                labelText: "Re-enter your password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintStyle: const TextStyle(color: Color(0xFF757575)),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                suffix: SvgPicture.string(
                  AppAssets.lockIcon,
                ),
                border: authOutlineInputBorder,
                enabledBorder: authOutlineInputBorder,
                focusedBorder: authOutlineInputBorder.copyWith(
                    borderSide: const BorderSide(color: Color(0xFFFF7643)))),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: const Color(0xFFFF7643),
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 48),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
            ),
            child: const Text("Continue"),
          )
        ],
      ),
    );
  }
}

const authOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Color(0xFF757575)),
  borderRadius: BorderRadius.all(Radius.circular(100)),
);
