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
        'days': '3',
        'hour': currentHour.toString()
      });

      var response = await http.get(url);
      print('statusCode : ${response.statusCode}');
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var responseBody = response.body;
        var json = jsonDecode(responseBody);
        print(json);
        var weatherResponse = WeatherResponseDto.fromJson(json);
        print('date : ${weatherResponse.forecast!.forecastday?[0].date}');

        return Right(weatherResponse);
      } else {
        return Left(Failures(errorMessage: 'Failed to fetch weather data'));
      }
    } catch (e) {
      return Left(Failures(errorMessage: 'An error occurred: ${e.toString()}'));
    }
  }

  Future<Either<Failures, dynamic>> getPrediction(List<dynamic> features) async {
    final url = Uri.parse('http://192.168.1.21:5001/predict');

    // Create the POST request body
    Map<String, dynamic> body = {'features': features};

    // Send the POST request
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode(body),
    );
    print(response.statusCode);
    // Handle the response
    if (response.statusCode == 200) {
      final prediction = json.decode(response.body)['prediction'];
      print('Prediction: $prediction');

      return Right(prediction);
    } else {
      return Left(
          Failures(errorMessage: 'Failed to get prediction!!!!!!!!!!!!!!'));
    }
  }
}
