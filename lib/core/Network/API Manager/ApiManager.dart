import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:weather_mate/core/Network/API%20Manager/Api_Constants.dart';
import 'package:weather_mate/features/HomeScreen/data/model/WeatherResponseDTO.dart';

import '../../Error/Failures.dart';
import '../../LocationService/GeoLocator.dart';

class ApiManager {
  ApiManager._();
  static ApiManager? _instance;
  static ApiManager getInstance() {
    _instance ??= ApiManager._();
    return _instance!;
  }

   Future<Either<Failures, WeatherResponseDto>> getWeather() async {
    try {
      DateTime now = DateTime.now();
      int currentHour = now.hour;

      // Get location
      Position? position = await GeoLocatorUtils.getLocation();
      if (position == null) {
        return Left(Failures(errorMessage: 'Failed to get location'));
      }
      Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.weatherUrl, {
        'key': '165619bae95247a79a8185632240210',

        'q': '${position.latitude.toString()},${position.longitude.toString()}',
        //
        'days': '5',
        'hour': currentHour.toString()
      });

      var response = await http.get(url);
      print('/111111111111111');
      print('statusCode : ${response.statusCode}');
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var responseBody = response.body;
        var json = jsonDecode(responseBody);
        var weatherResponse = WeatherResponseDto.fromJson(json);
        return Right(weatherResponse);

      } else {
        return Left(Failures(errorMessage: 'Failed to fetch weather data'));
      }
    } catch (e) {
      return Left(Failures(errorMessage: 'An error occurred: ${e.toString()}'));
    }
  }
}
