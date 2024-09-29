import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Splash_Screen.dart';
import 'core/blocObserver.dart';
import 'features/auth/Login/presenation/screens/LoginScreen.dart';
import 'features/auth/Register/presenation/screens/RegisterScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp();

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RegisterScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        LoginScreen.routeName: (context) =>  LoginScreen(),
    RegisterScreen.routeName: (context) =>  RegisterScreen(),

      },
      debugShowCheckedModeBanner: false,

    );
  }
}
