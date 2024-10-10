import 'package:dartz/dartz.dart';
import '../../../../core/Error/Failures.dart';
import '../entities/WeatherResponseEntity.dart';

abstract class BaseHomeDataSource {
  Future<Either<Failures, WeatherResponseEntity>?> getWeather();
}
