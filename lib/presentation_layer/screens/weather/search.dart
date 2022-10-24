



import 'package:azkary/business_layer/cubit/weather_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  String? cityname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.,
      //
      //   title: Center(child: Text("search acity",style: TextStyle(fontSize: 28),)),),
      body: Center(
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

    Navigator.pop(context);



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
      ),

    );
  }
}
