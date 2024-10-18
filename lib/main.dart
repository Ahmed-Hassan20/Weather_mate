import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Splash_Screen.dart';
import 'core/DI/DependancyInjection.dart';
import 'core/blocObserver.dart';
import 'features/HomeScreen/presentation/controller/HomeCubit/cubit/HomeCubit.dart';
import 'features/HomeScreen/presentation/screens/HomeScreen.dart';
import 'features/auth/Login/presenation/screens/LoginScreen.dart';
import 'features/auth/Register/presenation/screens/RegisterScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  final di = DependencyInjection();
  di.configure();

  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        RegisterScreen.routeName: (context) => const RegisterScreen(),
        HomeScreen.routeName: (context) => BlocProvider(
              create: (context) => HomeScreenCubit(), // Provide the cubit here
              child: HomeScreen(),
            ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
