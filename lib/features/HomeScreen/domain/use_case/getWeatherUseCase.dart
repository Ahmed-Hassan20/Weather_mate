import 'package:dartz/dartz.dart';
import 'package:weather_mate/features/HomeScreen/domain/entities/WeatherResponseEntity.dart';
import 'package:weather_mate/features/HomeScreen/domain/repositories/BaseHomeRepository.dart';

import '../../../../core/Error/Failures.dart';

class GetWeatherUseCase {
  BaseHomeRepository homeRepository;
  GetWeatherUseCase({required this.homeRepository});
  Future<Either<Failures, WeatherResponseEntity>?> invoke() {
    return homeRepository.getWeather();
  }
}
