import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_mate/features/auth/Login/presenation/controller/login_cubit/cubit/Login_Cubit.dart';
import 'package:weather_mate/features/auth/Registerr/presenation/screens/RegisterScreen.dart';
import '../../../../../core/Utils/assets.dart';
import '../../../Registerr/presenation/widgets/CustomTextFormField.dart';
import '../widgets/NoAccountText.dart';
import '../widgets/SignInForm.dart';
import '../widgets/SocalCard.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    LoginScreenCubit cubit = LoginScreenCubit();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Sign In"),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 16),
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
                    "Sign in with your email and password  \nor continue with social media",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF757575)),
                  ),
                  // const SizedBox(height: 16),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
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
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color(0xFFFF7643),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 48),
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(16)),
                      ),
                    ),
                    child: const Text("Login"),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2),
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
                            Navigator.of(context)
                                .pushReplacementNamed(RegisterScreen.routeName);
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Color(0xFFFF7643),fontWeight:FontWeight.bold,fontSize: 16
                            ),
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
  }
}
