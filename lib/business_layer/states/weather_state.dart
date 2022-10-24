
import 'package:azkary/data_layer/weather_model/weathmodel.dart';

abstract class WeatherState{}
class WeatherInitial extends WeatherState{}

class WeatherLoading extends WeatherState{}
class WeatherScucess extends WeatherState{

   WeatherModel weatherModel;
   WeatherScucess( {required this.weatherModel});
}
class Weathererror extends WeatherState{}