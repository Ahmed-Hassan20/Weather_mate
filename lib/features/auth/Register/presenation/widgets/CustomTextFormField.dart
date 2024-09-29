import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? suffixIcon;
  final bool isObsecure;
  final TextEditingController controller;
  final String? Function(String?) validator;
  CustomTextFormField(
      {required this.hintText,
      required this.labelText,
      required this.suffixIcon,
      required this.controller,
      this.isObsecure = false,
      required this.validator});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        controller: controller,
        validator: validator,
        obscureText: isObsecure,
        decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintStyle: const TextStyle(color: Color(0xFF757575)),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            suffix: SvgPicture.string(suffixIcon!),
            border: authOutlineInputBorder,
            enabledBorder: authOutlineInputBorder,
            focusedBorder: authOutlineInputBorder.copyWith(
                borderSide: const BorderSide(color: Color(0xFFFF7643)))),
      ),
    );
  }
}

const authOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Color(0xFF757575)),
  borderRadius: BorderRadius.all(Radius.circular(100)),
);
