import 'package:azkary/quraan_api.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'webservecies_name.g.dart';



@RestApi(baseUrl: "http://api.alquran.cloud/v1/")

abstract class WebServicesName{
  factory WebServicesName(Dio dio, {String baseUrl}) = _WebServicesName;



  @GET("quran/ar.alafasy")
  Future<Quran> getAllQuraanName() ;


}


