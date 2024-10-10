import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/HomeCubit/cubit/HomeCubit.dart';
import '../controller/HomeCubit/state/HomeState.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Using BlocProvider to get the HomeScreenCubit from the context
    return BlocProvider(
      create: (context) =>
          HomeScreenCubit()..getWeather(), // Call getLocation on initialization
      child: BlocBuilder<HomeScreenCubit, HomeStates>(
        builder: (context, state) {
          if (state is HomeLoadingState) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Loading...'),
              ),
              body: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state is HomeSuccessState) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: const Color(0xFFFF7643),
                title: Text(
                    '${state.weatherResponseEntity.location?.country},${state.weatherResponseEntity.location?.name}',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40),
                          ),
                          Container(
                            color: Colors.green,
                            child: state.weatherResponseEntity.current?.condition
                                        ?.icon !=
                                    null
                                ? Image.network(
                              fit: BoxFit.fill,
                                    'https:${state.weatherResponseEntity.current?.condition!.icon}', // Correct URL for the icon
                                    width: 100, // Adjust the size as needed
                                    height: 100,
                                    errorBuilder: (context, error, stackTrace) {
                                      return const Icon(Icons
                                          .error); // Fallback in case of an error
                                    },
                                  )
                                : const Icon(Icons.image_not_supported),
                          ),
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
                              Text('Wind:${state.weatherResponseEntity.current?.windMph}  mph'),
                              Text('Wind:${state.weatherResponseEntity.forecast?.day?.avgtempC}  mph'),

                              Text('Humidity: ${state.weatherResponseEntity.current?.humidity}'),
                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else if (state is HomeErrorState) {
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
