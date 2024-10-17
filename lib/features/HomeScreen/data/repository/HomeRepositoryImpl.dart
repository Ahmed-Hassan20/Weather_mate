import 'package:dartz/dartz.dart';
import 'package:weather_mate/core/Error/Failures.dart';
import 'package:weather_mate/features/HomeScreen/domain/entities/WeatherResponseEntity.dart';
import 'package:weather_mate/features/HomeScreen/domain/repositories/BaseHomeDataSource.dart';
import 'package:weather_mate/features/HomeScreen/domain/repositories/BaseHomeRepository.dart';

class HomeRepositoryImpl implements BaseHomeRepository {
  BaseHomeDataSource homeDataSource;
  HomeRepositoryImpl({required this.homeDataSource});

  @override
  Future<Either<Failures, WeatherResponseEntity>?> getWeather() async {
    return homeDataSource.getWeather();
  }

  @override
  Future<Either<Failures, dynamic>?> getPrediction(List<dynamic> features) {
   return homeDataSource.getPrediction(features);
  }
}
