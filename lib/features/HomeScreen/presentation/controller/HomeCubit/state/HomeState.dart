import 'package:weather_mate/features/HomeScreen/domain/entities/WeatherResponseEntity.dart';

abstract class HomeStates {}

class HomeInitialState extends HomeStates {}

class HomeLoadingState extends HomeStates {}

class HomeSuccessState extends HomeStates {
WeatherResponseEntity weatherResponseEntity;

HomeSuccessState({required this.weatherResponseEntity});
}

class HomeErrorState extends HomeStates {
  final String error;
  HomeErrorState(this.error);
}


