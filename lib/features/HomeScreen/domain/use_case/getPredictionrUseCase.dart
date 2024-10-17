import 'package:dartz/dartz.dart';
import 'package:weather_mate/features/HomeScreen/domain/entities/WeatherResponseEntity.dart';
import 'package:weather_mate/features/HomeScreen/domain/repositories/BaseHomeRepository.dart';

import '../../../../core/Error/Failures.dart';

class GetPredictionUseCase {
  BaseHomeRepository homeRepository;
  GetPredictionUseCase({required this.homeRepository});
  Future<Either<Failures, dynamic>?> invoke(List<dynamic> features) {
    return homeRepository.getPrediction(features);
  }
}
