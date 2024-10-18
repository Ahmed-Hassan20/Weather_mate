import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/HomeCubit/cubit/HomeCubit.dart';
import '../controller/HomeCubit/state/HomeState.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // Responsive size

    return BlocProvider(
      create: (context) => HomeScreenCubit()..getWeather(),
      child: BlocBuilder<HomeScreenCubit, HomeStates>(
        builder: (context, state) {
          if (state is HomeLoadingState) {
            // Loading state for weather
            return Scaffold(
              appBar: AppBar(
                title: const Text('Loading Weather...'),
              ),
              body: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state is HomeSuccessState) {
            // Display weather data
            return Scaffold(
              appBar: AppBar(
                backgroundColor: const Color(0xFFFF7643),
                title: Text(
                  '${state.weatherResponseEntity.location?.country}, ${state.weatherResponseEntity.location?.name}',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                    vertical: size.height * 0.02,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${state.weatherResponseEntity.current?.condition?.text}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: size.width * 0.08, // Responsive text
                            ),
                          ),
                          state.weatherResponseEntity.current?.condition?.icon != null
                              ? Image.network(
                            'https:${state.weatherResponseEntity.current?.condition!.icon}',
                            width: size.width * 0.2,
                            height: size.height * 0.2,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(Icons.error);
                            },
                          )
                              : const Icon(Icons.image_not_supported),
                        ],
                      ),
                      Card(
                        color: const Color(0xFFFF7643),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Time: ${state.weatherResponseEntity.current?.lastUpdated}',
                                style: TextStyle(
                                  fontSize: size.width * 0.045,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              Text(
                                'Temperature: ${state.weatherResponseEntity.current?.feelslikeC} °C',
                                style: TextStyle(
                                  fontSize: size.width * 0.05,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              Text(
                                'Wind: ${state.weatherResponseEntity.current?.windMph} mph',
                                style: TextStyle(
                                  fontSize: size.width * 0.045,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              Text(
                                'Avg Temp: ${state.weatherResponseEntity.forecast!.forecastday?[0].day?.avgtempC} °C',
                                style: TextStyle(
                                  fontSize: size.width * 0.045,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              Text(
                                'Humidity: ${state.weatherResponseEntity.current?.humidity}',
                                style: TextStyle(
                                  fontSize: size.width * 0.045,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.05),

                      ElevatedButton(
                        onPressed: () async {
                          var cubit = HomeScreenCubit.get(context);

                          if (state.weatherResponseEntity.features != null) {
                            await cubit.getPrediction(
                                state.weatherResponseEntity.features!);

                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text(cubit.prediction == true
                                    ? 'Great News'
                                    : 'Not your Day'),
                                content: Text(cubit.prediction == true
                                    ? "Let's Do it"
                                    : 'Maybe another time'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Error'),
                                content: const Text(
                                    'Features not available for prediction.'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: Size(
                            size.width * 0.4,
                            size.height * 0.06,
                          ), // Smaller and responsive button
                          backgroundColor: const Color(0xFFFF7643),
                        ),
                        child: Text(
                          'Get Prediction',
                          style: TextStyle(
                            fontSize: size.width * 0.045,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else if (state is HomeErrorState) {
            // Show error for weather fetch
            return Scaffold(
              appBar: AppBar(
                title: const Text('Error'),
              ),
              body: Center(
                child: Card(
                  color: Colors.red,
                  margin: const EdgeInsets.all(16),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'Error: ${state.error}',
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
