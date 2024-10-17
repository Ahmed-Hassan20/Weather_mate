import 'package:dartz/dartz.dart';
import '../../../../core/Error/Failures.dart';
import '../entities/WeatherResponseEntity.dart';

abstract class BaseHomeDataSource {
  Future<Either<Failures, WeatherResponseEntity>?> getWeather();
  Future<Either<Failures, dynamic>?> getPrediction(List<dynamic> features);

}
