import 'package:azkary/quraan_api.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'quraan_webservices.g.dart';



@RestApi(baseUrl: "http://api.alquran.cloud/v1/")

abstract class QuraanWebServices{
  factory QuraanWebServices(Dio dio, {String baseUrl}) = _QuraanWebServices;



  @GET("quran/ar.alafasy")
 Future<Quran> getAllQuraan() ;


}




