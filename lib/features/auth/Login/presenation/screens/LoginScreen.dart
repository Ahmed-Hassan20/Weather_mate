import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_mate/core/Utils/dialog_utils.dart';
import 'package:weather_mate/features/auth/Register/presenation/widgets/CustomButton.dart';
import '../../../../../core/Utils/assets.dart';
import '../../../../HomeScreen/presentation/screens/HomeScreen.dart';
import '../../../Register/presenation/screens/RegisterScreen.dart';
import '../../../Register/presenation/widgets/CustomTextFormField.dart';
import '../controller/login_cubit/cubit/Login_Cubit.dart';
import '../controller/login_cubit/state/login_state.dart';
import '../widgets/SocalCard.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'LoginScreen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginScreenCubit(),
      child: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Login Your Account",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: BlocConsumer<LoginScreenCubit, LoginStates>(
          listener: (context, state) {
            if (state is LoginLoadingState) {
              DialogUtils.showLoading(context, 'Loading!!!');
            } else if (state is LoginErrorState) {
              Navigator.pop(context); // Close loading indicator
              // Show error message
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Error occurred')),
              );
            } else if (state is LoginSuccessState) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Success')),
              );
            }
          },
          builder: (context, state) {
            final cubit =
                BlocProvider.of<LoginScreenCubit>(context); // Access cubit here
            return SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        const Text(
                          "Welcome Back",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Sign in with your email and password or continue with social media",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Color(0xFF757575)),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05),
                        Form(
                          key: cubit.formKey,
                          child: Column(
                            children: [
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
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.02),
                              CustomButton(
                                  title: 'Login',
                                  onPressed: () {
                                    cubit.login(context);
                                    Navigator.of(context).pushReplacementNamed(
                                        HomeScreen.routeName);
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account? ",
                              style: TextStyle(
                                color: Color(0xFF757575),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacementNamed(
                                    RegisterScreen.routeName);
                              },
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Color(0xFFFF7643),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Expanded(
                    child: SvgPicture.asset(
                      'assets/images/bottom.svg',
                      width: double.infinity,
                      fit: BoxFit.fill,  // Adjust how the SVG should fit in the box
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
