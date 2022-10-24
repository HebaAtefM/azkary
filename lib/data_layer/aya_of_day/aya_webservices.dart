import 'dart:convert';
import 'dart:math';

import 'package:azkary/data_layer/aya_of_day/api_aya.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'aya_webservices.g.dart';

// class AyaWebServices{
// static   Dio? dio;
// static init(){
//  dio=Dio(
//    BaseOptions(
//        baseUrl:"https://quranicaudio.com/api/" ,
//        receiveDataWhenStatusError: true,
//
//    )
//  );
//
// }
// static Future<Response> getQari()async{
//  return await    dio!.get("qaris");
// }



@RestApi(baseUrl: "https://quranicaudio.com/api/")

abstract class AyaWebServices {
  factory AyaWebServices(Dio dio, {String baseUrl}) = _AyaWebServices;

}
//
// @GET("qaris")
// Future<List<Qari>> getAllQuraan() ;
//
//
// }




// static random(min,max){
//     var rn=new Random();
//     return min+ rn.nextInt(max-min);
// }




// Future<Object?> getAyaOfTheDay()async{
//
//
//   // String url="http://api.alquran.cloud/v1/ayah/${random(1,6237)}/editions/quran-uthmani,en.asad,en.pickthall";
//   // final response=await http.get(Uri.parse(url));
//   // if(response.statusCode==200) {
//   //   return AyaOfTheDay.fromJson(json.decode(response.body));
//   // }else{
//   //   print("failed");
//   //   throw Exception("failed");
//   //
//   //
//   // }
//
//   // var request = await http.Request('GET',
//   //     Uri.parse('http://api.alquran.cloud/v1/ayah/${random(1,6237)}/editions/quran-uthmani,en.asad,en.pickthall'));
//   //
//   //
//   // http.StreamedResponse response = await request.send();
//   //
//   // if (response.statusCode == 200) {
//   //    return   AyaOfTheDay.fromJson(json.decode(await response.stream.bytesToString()));
//   // }
//   // else {
//   //   return response.reasonPhrase;
//   // }
//
//
// }