


import 'package:azkary/business_layer/cubit/weather_cubit.dart';
import 'package:azkary/business_layer/states/weather_state.dart';
import 'package:azkary/data_layer/weather_model/weathmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Weather extends StatelessWidget {
   Weather({Key? key}) : super(key: key);

   String? cityname;

WeatherModel? weatherModel;
  @override
  Widget build(BuildContext context) {
    

    return  Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.blueAccent.withOpacity(.3),elevation: 0,
        //   title: Text('الطقس',style: TextStyle(fontSize: 28),),
        //   actions: [
        //     IconButton(onPressed: (){
        //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Search()));
        //     }, icon: Icon(Icons.search)),
        //   ],
        // ),
        body:BlocBuilder<Weathercubit,WeatherState>(
          builder:(context,state) {
            if (state is WeatherLoading) {
              return Center(child: CircularProgressIndicator(),);
            }
            else if (state is WeatherScucess) {
         //  weatherModel=   BlocProvider.of<Weathercubit>(context).weatherModel;
              return Success(weatherModel: state.weatherModel);
            }
            else {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(child:Center(
                child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  onChanged: (data)async{
                    cityname=data;
                  },
                  onSubmitted: (data)async{
                    cityname=data;

                    BlocProvider.of<Weathercubit>(context).getWeather(cityname: cityname!);
                    BlocProvider.of<Weathercubit>(context).cityname=cityname;

                    //print(cityname);
                    //           weatherWebServices weather=weatherWebServices();
                    // WeatherModel services=       await  weather.getWeather(cityname:cityname!);

                  //  Navigator.pop(context);



                  },
// onChanged: (data){
// },
                  decoration:InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 24),
                    label: Text("search"),
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(

                    ),
                    hintText: "Enter City Name",

                  ) ,

                ),
              ),
            ),),



                    SizedBox(height: 40,),
                    Center(
                      child: Image.asset(
                     "images/clear.png"
                        ),
                      ),

                    Center(
                      child: Text(
                        'searching now 🔍',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    )
                  ],
                ),
              );
            }
          }
      )



    );
  }
}



class Success extends StatelessWidget{
  final WeatherModel? weatherModel;

  const Success({super.key, required this.weatherModel});
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/sam.jpg",),fit: BoxFit.cover
        ),
     // gradient: LinearGradient(
     //    colors: [
     //      Colors.blue.withOpacity(.3),
     //      Colors.blue.withOpacity(.7),
     //     // Color(0xFFC68E11	)
     //
     //
     //    ]
     //  )
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Spacer(flex: 3,),

          Text(BlocProvider.of<Weathercubit>(context).cityname!, style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold),),
          Text("تحدث في   :${weatherModel!.date.toString()}", style: TextStyle(fontSize: 20,),),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Image.asset(weatherModel!.icon.toString()),

                Image.asset(weatherModel!.getImage()),
                Text("${weatherModel!.temp.toInt().toString()}", style: TextStyle(
                    fontSize: 32, fontWeight: FontWeight.bold),),
                ]
          ),
          Spacer(),

          Center(
                  child: Column(children: [
                    Text("الدرجه العظمي:${weatherModel!.maxtemp.toString()}",style: TextStyle(fontSize: 20,)),
                    Text("الدرجه الصغري:${weatherModel!.mintemp.toString()}",style: TextStyle(fontSize: 20,)),

                  ],),
                ),
          Spacer(),

          Center(child: Text("${weatherModel!.weatherstatename.toString()}", style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold),)),
          Spacer(flex: 3,),


]
    )

    );
  }




}





























// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:my_project/business_layer/cubit/weather_cubit.dart';
// import 'package:my_project/data_layer/weather_model/repository_weather.dart';
// import 'package:my_project/data_layer/weather_model/webservices_weather.dart';
// import 'package:provider/provider.dart';
//
// import '../../business_layer/states/weather_state.dart';
// import '../../data_layer/weather_model/weather_model.dart';


//
// class WeatherPage extends StatefulWidget {
//
//   WeatherPage({Key? key, }) : super(key: key);
//
//   @override
//   State<WeatherPage> createState() => _WeatherPageState();
// }
//
// class _WeatherPageState extends State<WeatherPage> {
//          WeatherModel? weatherModel;
//
//          @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
// }
//   @override
//   Widget build(BuildContext context) {
//
//
//     return BlocBuilder<WeatheraaCubit, WeatherState>(
//
//             builder: (context, state) {
//               if (state is WeatherLoading) {
//               weatherModel = (state).weather as WeatherModel ;
//                 return Scaffold(
//                     body: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Spacer(flex: 3,),
//                           Text("القاهره",
//                             style: TextStyle(
//                                 fontSize: 32, color: Colors.blueGrey),),
//                               Text("${weatherModel.date}", style: TextStyle(fontSize: 20, color: Colors.black54),),
//                           Spacer(),
//                           // Image.asset("${}", width: 150, height: 150,),
//
//
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Text("${weatherModel.temp}",
//                                 style: TextStyle(fontSize: 20,
//                                     color: Colors.blueGrey),),
//                               Row(
//                                 children: [
//                                   Text(':االقيمه العظمه${weatherModel.maxtemp.toInt() }', style: TextStyle(
//                                       fontSize: 20, color: Colors.white),),
//                                   SizedBox(width: 30,),
//
//                                   Text(':االقيمه الصغري${weatherModel.mintemp.toInt() }',
//                                     style: TextStyle(
//                                         fontSize: 20, color: Colors.white),),
//
//
//                                 ],
//                               )
//                             ],
//                           ),
//
//
//                           // Spacer(flex: 5,),
//
//
//                         ]
//                     )
//
//
//                 );
//               } else {
//                 return CircularProgressIndicator(color: Colors.green,);
//               }
//             }
//         )
//
//     );
//   }
// }

//
//       ),
//     );
//   }
// }
//            else {
//               return Container(
//                 color: weatherModel?.getColorTheme(),
//                   decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                   colors: [
//
//                     weatherModel!.getColorTheme(),
//                     weatherModel!.getColorTheme()[300]!,
//                     weatherModel!.getColorTheme()[100]!,
//
//             ],
//             begin: Alignment.topCenter,
//             end:Alignment.bottomCenter,),),
//                 child:
//
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Spacer(flex: 3,),
//                     Text("القاهره",
//                       style: TextStyle(fontSize: 32, color: Colors.blueGrey),),
//                    Text(weatherModel!.date.toString(), style: TextStyle(fontSize: 20, color: Colors.white),),
//                     Spacer(),
//                     Image.asset(weatherModel!.getImage(), width: 150, height: 150,),
//
//
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                          Text("16",style:TextStyle(fontSize: 20,color: Colors.white) ,),
//                         Row(
//                           children: [
//                             Text(':االقيمه العظمه${weatherModel!.maxtemp!.toInt()}', style: TextStyle(fontSize: 20, color: Colors.white),),
//                             SizedBox(width: 30,),
//
//                              Text(':االقيمه الصغري${weatherModel!.mintemp!.toInt()}',
//                                style: TextStyle(
//                                   fontSize: 20, color: Colors.white),),
//
//
//                           ],
//                         )
//                       ],
//                     ),
//
//                     Text(weatherModel?.weatherStateName ??'' ,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
//
//                     Spacer(flex: 5,),
//
//
//                   ],
//                 ),
//
//
//               );
//