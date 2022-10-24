 import 'package:azkary/data_layer/quraan/quraan_webservices.dart';
import 'package:azkary/quraan_api.dart';
import 'package:http/http.dart';


class MyRepo{

  final QuraanWebServices quraanWebServices;
  MyRepo(this.quraanWebServices);

  Future<List<Surahs>?>getAllQuraan() async{

var response= await quraanWebServices.getAllQuraan();

   return  response.data!.surahs;
       //.data!.surahs![0].ayahs!;

   //map((e) =>  Ayahs.fromJson(e.toJson())).toList();

  }



}