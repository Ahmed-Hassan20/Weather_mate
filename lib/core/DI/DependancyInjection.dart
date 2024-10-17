import 'package:get_it/get_it.dart';
import 'package:weather_mate/core/Network/API%20Manager/ApiManager.dart';
import 'package:weather_mate/features/HomeScreen/data/data_source/HomeDataSourceImpl.dart';
import 'package:weather_mate/features/HomeScreen/data/repository/HomeRepositoryImpl.dart';
import 'package:weather_mate/features/HomeScreen/domain/repositories/BaseHomeDataSource.dart';
import 'package:weather_mate/features/HomeScreen/domain/repositories/BaseHomeRepository.dart';
import 'package:weather_mate/features/HomeScreen/domain/use_case/getPredictionrUseCase.dart';
import 'package:weather_mate/features/HomeScreen/domain/use_case/getWeatherUseCase.dart';
import 'package:weather_mate/features/auth/Login/domain/repositories/BaseLoginDataSource.dart';
import 'package:weather_mate/features/auth/Login/data/data_source/LoginDataSourceImpl.dart';
import 'package:weather_mate/features/auth/Login/data/repository/LoginRepositoryImpl.dart';
import 'package:weather_mate/features/auth/Login/domain/repositories/BaseLoginRepository.dart';
import 'package:weather_mate/features/auth/Register/data/data_source/BaseRegisterDataSource.dart';
import 'package:weather_mate/features/auth/Register/data/data_source/RegisterDataSourceImpl.dart';
import 'package:weather_mate/features/auth/Register/data/repository/RegisterRepositoryImpl.dart';
import 'package:weather_mate/features/auth/Register/domain/repositories/BaseRegisterRepository.dart';

import '../Network/FireBase/FirebaseUtils.dart';

class DependencyInjection {
  final getIt = GetIt.instance;

  void configure() {
    getIt.registerLazySingleton<BaseLoginDataSource>(() =>
        (LoginDataSourceImpl(firebaseUtils: FirebaseUtils.getInstance())));

    getIt.registerLazySingleton<BaseRegisterDataSource>(() =>
        (RegisterDataSourceImpl(firebaseUtils: FirebaseUtils.getInstance())));

    getIt.registerLazySingleton<BaseLoginRepository>(
      () => LoginRepositoryImpl(loginDataSource: getIt<BaseLoginDataSource>()),
    );

    getIt.registerLazySingleton<BaseRegisterRepository>(
      () => RegisterRepositoryImpl(
          registerDataSource: getIt<BaseRegisterDataSource>()),
    );
    getIt.registerLazySingleton<BaseHomeDataSource>(
          () => HomeDataSourceImpl(apiManager: ApiManager.getInstance()),
    );
    getIt.registerLazySingleton<BaseHomeRepository>(
          () => HomeRepositoryImpl(
        homeDataSource: getIt<BaseHomeDataSource>()),
    );
    getIt.registerLazySingleton<GetWeatherUseCase>(
          () => GetWeatherUseCase(
          homeRepository: getIt<BaseHomeRepository>()),
    );
    getIt.registerLazySingleton<GetPredictionUseCase>(
          () => GetPredictionUseCase(
          homeRepository: getIt<BaseHomeRepository>()),
    );
  }
}
