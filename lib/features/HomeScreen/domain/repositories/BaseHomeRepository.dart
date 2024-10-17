import 'package:dartz/dartz.dart';

import 'package:weather_mate/features/HomeScreen/domain/entities/WeatherResponseEntity.dart';

import '../../../../core/Error/Failures.dart';

abstract class BaseHomeRepository {
  Future<Either<Failures, WeatherResponseEntity>?> getWeather();
  Future<Either<Failures, dynamic>?> getPrediction(List<dynamic> features);

}
