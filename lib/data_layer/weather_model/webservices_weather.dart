

import 'dart:convert';

import 'package:azkary/data_layer/weather_model/weathmodel.dart';
import 'package:http/http.dart' as http;

class weatherWebServices {
  //
  String baseurl = 'http://api.weatherapi.com/v1';
  String endpoints = '/forecast.json?key=89247db86eaf448f90b90531221610&q=egypt&days=1&aqi=no&alerts=no';
  String apikey = ' 89247db86eaf448f90b90531221610';


Future<WeatherModel> getWeather({required String cityname}) async {
  Uri uri=Uri.parse("http://api.weatherapi.com/v1/forecast.json?key= 89247db86eaf448f90b90531221610&q=$cityname&days=3");

http.Response response=await  http.get(uri) ;
Map<String,dynamic>data=jsonDecode(response.body);
WeatherModel weatherModel=WeatherModel.fromJson(data);
return weatherModel;
}

}