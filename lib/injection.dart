





import 'package:get_it/get_it.dart';


import 'package:azkary/business_layer/cubit/allquraancubit.dart';
import 'package:azkary/business_layer/cubit/hadith_cubit.dart';

import 'package:azkary/data_layer/quraan/quraan_webservices.dart';
import 'package:azkary/data_layer/quraan/repository.dart';
import 'package:dio/dio.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<QuraanCubit>(()=>QuraanCubit(getIt()));

  getIt.registerLazySingleton<MyRepo>(()=>MyRepo(getIt()));
  getIt.registerLazySingleton<QuraanWebServices>(
          ()=>QuraanWebServices((createDio())));





//   getIt.registerLazySingleton<surahnamecubit>(()=>surahnamecubit(getIt()));
//   getIt.registerLazySingleton<MyReponame>(()=>MyReponame(getIt()));
// //  getIt.registerLazySingleton<MyRepo>(()=>MyRepo(getIt()));
//
//   getIt.registerLazySingleton<WebServicesName>(
//           ()=>WebServicesName((createDio())));


}
void inittGetIt() {
 // getIt.registerLazySingleton<HadithCubit>(() => HadithCubit(getIt()));
 //
 //  getIt.registerLazySingleton<MyRepoHadith>(() => MyRepoHadith(getIt()));
 //  getIt.registerLazySingleton<HadithWeb>(
 //          () => HadithWeb((createDio())));
}

Dio  createDio(){
  Dio  dio=Dio();
  dio
    ..options.connectTimeout=10*1000
    ..options.receiveTimeout=10*1000;
  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    error: true,
    responseHeader: false,
    request: true,
    requestBody: true,
  ));
  return dio;

}
