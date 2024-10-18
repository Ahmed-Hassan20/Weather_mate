import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_mate/core/Utils/dialog_utils.dart';

import '../../../../../core/Utils/assets.dart';
import '../../../Login/presenation/screens/LoginScreen.dart';
import '../../../Login/presenation/widgets/SocalCard.dart';

import '../controller/Register_cubit/cubit/Register_Cubit.dart';
import '../controller/Register_cubit/state/RegisterStates.dart';
import '../widgets/CustomButton.dart';
import '../widgets/CustomTextFormField.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'RegisterScreen';

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  RegisterScreenCubit cubit = RegisterScreenCubit();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterScreenCubit, RegisterStates>(
      bloc: cubit,
      listener: (context, state) {
        if (state is RegisterLoadingState) {
          DialogUtils.showLoading(context, 'Loading!!!');
        } else if (state is RegisterErrorState) {
          DialogUtils.hideLoading(context);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Error occurred')),
          );
        } else if (state is RegisterSuccessState) {
          DialogUtils.hideLoading(context);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Success')),
          );
        }
      },
      builder: (BuildContext context, RegisterStates state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Register Account",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
          body: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Form(
                        key: cubit.formKey,
                        child: Column(
                          children: [
                            CustomTextFormField(
                              hintText: 'Enter your Name',
                              labelText: 'UserName',
                              suffixIcon: AppAssets.userIcon,
                              controller: cubit.nameController,
                              validator: (text) {
                                if (text == null || text.trim().isEmpty) {
                                  return 'Please Enter User Name';
                                }
                                return null;
                              },
                            ),
                            CustomTextFormField(
                              hintText: 'Enter your Phone Number',
                              labelText: 'Phone Number',
                              suffixIcon: AppAssets.phoneIcon,
                              controller: cubit.phoneController,
                              validator: (text) {
                                if (text == null || text.trim().isEmpty) {
                                  return 'Enter phone number';
                                }
                                if (text.trim().length < 11) {
                                  return 'Please enter correct phone number';
                                }
                                if (text.trim().length > 11) {
                                  return 'Please enter correct phone number';
                                }
                                return null;
                              },
                            ),
                            CustomTextFormField(
                              hintText: 'Enter your Email',
                              labelText: 'Email',
                              suffixIcon: AppAssets.mailIcon,
                              controller: cubit.emailController,
                              validator: (text) {
                                if (text == null || text.trim().isEmpty) {
                                  return 'Please Enter Email Address';
                                }
                                bool emailValid = RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(text);
                                if (!emailValid) {
                                  return 'Please Enter Valid Email';
                                }
                                return null;
                              },
                            ),
                            CustomTextFormField(
                              hintText: "Enter your password",
                              labelText: "Password",
                              isObsecure: true,
                              suffixIcon: AppAssets.lockIcon,
                              controller: cubit.passwordController,
                              validator: (text) {
                                if (text == null || text.trim().isEmpty) {
                                  return 'Please Enter Password';
                                }
                                if (text.length < 6) {
                                  return 'Password should be at least 6 chars';
                                }
                                return null;
                              },
                            ),
                            CustomTextFormField(
                              hintText: "Enter Confirmation password",
                              labelText: "Confirmation Password",
                              isObsecure: true,
                              suffixIcon: AppAssets.lockIcon,
                              controller: cubit.confirmationController,
                              validator: (text) {
                                if (text == null || text.trim().isEmpty) {
                                  return 'Please Enter Confirmation Password';
                                }
                                if (text != cubit.passwordController.text) {
                                  return "Password doesn't Match";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02),
                            CustomButton(
                                title: 'Register',
                                onPressed: () {
                                  cubit.register(context);
                                })
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          "or continue with social media",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Color(0xFF757575)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialCard(
                            icon: SvgPicture.string(AppAssets.googleIcon),
                            press: () {},
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: SocialCard(
                              icon: SvgPicture.string(AppAssets.facebookIcon),
                              press: () {},
                            ),
                          ),
                          SocialCard(
                            icon: SvgPicture.string(AppAssets.twitterIcon),
                            press: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      // const Text(
                      //   "By continuing your confirm that you agree \n with our Term and Condition",
                      //   textAlign: TextAlign.center,
                      //   style: TextStyle(
                      //     color: Color(0xFF757575),
                      //   ),
                      // )
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account? ",
                            style: TextStyle(
                              color: Color(0xFF757575),
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacementNamed(
                                    LoginScreen.routeName);
                              },
                              child: const Text(
                                'Sign In',
                                style: TextStyle(
                                    color: Color(0xFFFF7643),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
