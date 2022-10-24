

import 'package:azkary/business_layer/states/weather_state.dart';
import 'package:azkary/data_layer/weather_model/weathmodel.dart';
import 'package:azkary/data_layer/weather_model/webservices_weather.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Weathercubit extends Cubit<WeatherState>{
  Weathercubit(this.webServices) :super(WeatherInitial());


String? cityname;

  weatherWebServices webServices;
 // WeatherModel? weatherModel;

 void   getWeather({required String cityname})async{
    emit(WeatherLoading());
    try {
   WeatherModel weatherModel=  await webServices.getWeather(cityname: cityname);
      emit(WeatherScucess(weatherModel:weatherModel));
    }catch(e){
      emit(Weathererror());
    }

  }



}
