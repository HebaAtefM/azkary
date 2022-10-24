

import 'package:azkary/quraan_api.dart';
import 'package:azkary/surah/webservecies_name.dart';

class MyReponame{

  final WebServicesName webServicesName;
  MyReponame(this.webServicesName);

  Future<List<Surahs>?>getAllQuraan() async{

    var response= await webServicesName.getAllQuraanName();

   // return response.data!.surahs;
       return response.data?.surahs;
    //.data!.surahs![0].ayahs!;

    //map((e) =>  Ayahs.fromJson(e.toJson())).toList();

  }
  Future<List<Ayahs>?>getAllAya() async{

    Quran response= await webServicesName.getAllQuraanName();

    // return response.data!.surahs;
    return response.data!.surahs![1].ayahs;
    //.data!.surahs![0].ayahs!;

    //map((e) =>  Ayahs.fromJson(e.toJson())).toList();

  }



}