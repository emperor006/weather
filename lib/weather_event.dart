part of 'weather_bloc.dart';

@immutable
sealed class WeatherEvent extends Equatable{
  const WeatherBloc();

  @override
  List<Object> get props =>[];

}

class FetchWeather extends WeatherEvent{

}
