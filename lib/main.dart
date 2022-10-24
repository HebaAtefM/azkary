
import 'package:azkary/business_layer/cubit/allquraancubit.dart';
import 'package:azkary/business_layer/cubit/hadith_cubit.dart';
import 'package:azkary/business_layer/cubit/weather_cubit.dart';
import 'package:azkary/data_layer/weather_model/webservices_weather.dart';
import 'package:azkary/injection.dart';
import 'package:azkary/presentation_layer/screens/splash_screen.dart';
import 'package:azkary/quraan_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'bloc_observer.dart';
import 'presentation_layer/screens/adhan/adhan_screen.dart';

void main() {
  initGetIt();
  //inittGetIt();
   //Bloc.observer = MyBlocObserver();


  runApp( MyApp());


}

class MyApp extends StatelessWidget {
   MyApp({super.key,});
List<Surahs> sur=[];
String? cityname;
  @override
  Widget build(BuildContext context) {

     return
    MultiBlocProvider(
      providers: [

      //  BlocProvider(create: (context)=>getIt<surahnamecubit>()..getAllQuraanname()..getAllQuraanaya() ),
        BlocProvider(create: (context)=>getIt<QuraanCubit>()..getAllQuraan(),),
     //   BlocProvider(create: (context)=>getIt<HadithCubit>()..getallhadith(),),
        BlocProvider(create: (context)=>Weathercubit(weatherWebServices()),)


      ],
       // create: (context)=>getIt<QuraanCubit>(),

        child:
     MaterialApp(
        theme: ThemeData(
         // primarySwatch: Colors.green,
          appBarTheme: AppBarTheme(

              backwardsCompatibility: false,
           //   backgroundColor: Colors.lightGreen,elevation: 0,
        //  systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.lightGreen,)
    ),


        ),
debugShowCheckedModeBanner: false,
         // onGenerateRoute: appRoute?.generateRoute,
       home:
          Splash()),




    );






           // BlocProvider(
          //
          //
          //     create: (BuildContext context) =>QuraanCubit(ApiServices()) ,





  }
}



