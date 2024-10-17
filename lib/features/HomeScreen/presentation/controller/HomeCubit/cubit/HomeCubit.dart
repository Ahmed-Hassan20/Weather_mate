import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_mate/features/HomeScreen/domain/use_case/getPredictionrUseCase.dart';
import 'package:weather_mate/features/HomeScreen/domain/use_case/getWeatherUseCase.dart';
import '../state/HomeState.dart';

class HomeScreenCubit extends Cubit<HomeStates> {
  final GetWeatherUseCase getWeatherUseCase =
      GetIt.instance<GetWeatherUseCase>();
  final GetPredictionUseCase getPredictionUseCase =
      GetIt.instance<GetPredictionUseCase>();
  dynamic prediction = null;
  HomeScreenCubit() : super(HomeInitialState());

  static HomeScreenCubit get(context) =>
      BlocProvider.of<HomeScreenCubit>(context);

  // Separate weather fetching from prediction
  Future<void> getWeather() async {
    emit(HomeLoadingState()); // For weather loading state
    try {
      var either = await getWeatherUseCase.invoke();
      either?.fold((l) {
        emit(HomeErrorState(l.errorMessage!)); // Error for weather fetch
      }, (response) {
        emit(HomeSuccessState(
            weatherResponseEntity: response)); // Success for weather fetch
      });
    } catch (e) {
      emit(HomeErrorState(e.toString())); // Generic weather error
    }
  }

  // Separate state logic for prediction
  Future<void> getPrediction(List<int> features) async {
    try {
      var either = await getPredictionUseCase.invoke(features);
      either?.fold((l) {
        return l.errorMessage;
      }, (response) {
        if (response.isNotEmpty && response[0] == 1) {
          prediction = true;
        } else {
          prediction = false;
        }
        print('Prediction: $prediction');
      });
    } catch (e) {
      rethrow;
    }
  }
}
