import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/HomeCubit/cubit/HomeCubit.dart';
import '../controller/HomeCubit/state/HomeState.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> feature = [0,0,0,0,0];
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
            print(state.weatherResponseEntity.features);
            // Display weather data
            return Scaffold(
              appBar: AppBar(
                backgroundColor: const Color(0xFFFF7643),
                title: Text(
                  '${state.weatherResponseEntity.location?.country},${state.weatherResponseEntity.location?.name}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${state.weatherResponseEntity.current?.condition?.text}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40),
                          ),
                          state.weatherResponseEntity.current?.condition
                                      ?.icon !=
                                  null
                              ? Image.network(
                                  fit: BoxFit.fill,
                                  'https:${state.weatherResponseEntity.current?.condition!.icon}',
                                  width: 100,
                                  height: 100,
                                  errorBuilder: (context, error, stackTrace) {
                                    return const Icon(
                                        Icons.error); // Error fallback
                                  },
                                )
                              : const Icon(Icons.image_not_supported),
                        ],
                      ),
                      Card(
                        color: const Color(0xFFFF7643),
                        margin: const EdgeInsets.all(8),
                        child: ListTile(
                          title: Text(
                              'Time:${state.weatherResponseEntity.current?.lastUpdated}'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Temperature: ${state.weatherResponseEntity.current?.feelslikeC} °C',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                  'Wind:${state.weatherResponseEntity.current?.windMph} mph'),
                              Text(
                                  'Avg Temp:${state.weatherResponseEntity.forecast!.forecastday?[0].day?.avgtempC} °C'),
                              Text(
                                  'Humidity: ${state.weatherResponseEntity.current?.humidity}'),
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          if (feature != null) {
                            await HomeScreenCubit.get(context).getPrediction(feature);
                            var cubit = HomeScreenCubit.get(context);

                            // Show dialog based on prediction
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text(cubit.prediction == true
                                    ? 'Prediction Success'
                                    : 'Prediction Failed'),
                                content: Text(cubit.prediction == true
                                    ? 'Prediction result: success'
                                    : 'Prediction result: fail'),
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
                                content: const Text('Features not available for prediction.'),
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
                        child: const Text('Get Prediction'),
                      ),                    ],
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
            return Container(
              color: Colors.green,
            );
          }
        },
      ),
    );
  }
}
