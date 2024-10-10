import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:weather_mate/core/Error/Failures.dart';
import 'package:weather_mate/core/Network/API%20Manager/ApiManager.dart';
import 'package:weather_mate/features/HomeScreen/domain/entities/WeatherResponseEntity.dart';

import '../../domain/repositories/BaseHomeDataSource.dart';

class HomeDataSourceImpl implements BaseHomeDataSource {
ApiManager apiManager;
HomeDataSourceImpl({required this.apiManager});

  @override
  Future<Either<Failures, WeatherResponseEntity>?> getWeather() async{
    var either =
        await apiManager.getWeather();
    return either.fold((l) {
      return Left(Failures(errorMessage: l.errorMessage));
    }, (response) {
      return Right(response);
    });
  }
}
