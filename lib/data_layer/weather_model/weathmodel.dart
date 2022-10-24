import 'package:flutter/material.dart';

class WeatherModel{
  String date;
  double temp;
  double maxtemp;
  double mintemp;
  String weatherstatename;
  String icon;


  WeatherModel({required this.date, required this.temp,
    required this.maxtemp, required this.mintemp, required this.weatherstatename,required this.icon});



  factory WeatherModel.fromJson(dynamic data){
  var jsonData= data["forecast"]["forecastday"][0]["day"];

return WeatherModel(
  date: data["location"]["localtime"],
    temp: jsonData["avgtemp_c"],
    maxtemp:jsonData["maxtemp_c"], mintemp: jsonData["mintemp_c"],
weatherstatename: jsonData["condition"]["text"],
    icon: jsonData["condition"]["icon"]





);

}
String getImage(){
    if(weatherstatename=='Thunder'){
      return "images/thunderstorm.png";
    }else if(weatherstatename=='Clear'|| weatherstatename=="Light Cloud"){
      return "images/clear.png";
    }
    else if(weatherstatename=='Sleet'|| weatherstatename=="Snow"){
      return "images/snow.png";
    }else if(weatherstatename=='Heavy Rain'|| weatherstatename=="Light Rain"){
      return "images/rainy.png";
    }
    else if(weatherstatename=='Heavy Cloud'){
      return "images/cloud.png";
    }else{
      return "images/clear.png";
    }



}
}




