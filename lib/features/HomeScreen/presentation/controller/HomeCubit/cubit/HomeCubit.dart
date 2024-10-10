import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_mate/features/HomeScreen/domain/use_case/getWeatherUseCase.dart';
import '../state/HomeState.dart';

class HomeScreenCubit extends Cubit<HomeStates> {
  final GetWeatherUseCase getWeatherUseCase = GetIt.instance<GetWeatherUseCase>();

  HomeScreenCubit() : super(HomeInitialState());

  static HomeScreenCubit get(context) =>
      BlocProvider.of<HomeScreenCubit>(context);


  Future<void> getWeather() async {
    emit(HomeLoadingState());
    try {
      var either = await getWeatherUseCase.invoke();

      either?.fold((l) {
        emit(HomeErrorState(l.errorMessage!));
      }, (response) {
        emit(HomeSuccessState(weatherResponseEntity: response));
      });
    } catch (e) {
      emit(HomeErrorState(e.toString()));
    }
  }
}
