




import 'package:adhan_dart/adhan_dart.dart';
import 'package:azkary/presentation_layer/screens/adhan/qebla.dart';
import 'package:flutter/material.dart';

class AdhanScreen extends StatefulWidget {
  const AdhanScreen({Key? key}) : super(key: key);

  @override
  State<AdhanScreen> createState() => _AdhanScreenState();
}

class _AdhanScreenState extends State<AdhanScreen> {

  late PrayerTimes prayerTimes;
  late DateTime date;
  late Coordinates coordinates;
  late CalculationParameters parameters;
// late Stream<LocationData> locationdata;

// int inte=0;
// List pages=[
//   AdhanScreen(),
//   Qbla()
// ];
  @override
  void initState() {
   // locationdata=location.onLocationChanged;
     date=DateTime.now();
     coordinates =
         Coordinates(30.033333, 31.233334);
     parameters=CalculationMethod.Egyptian();
    prayerTimes=PrayerTimes(coordinates, date,parameters, precision: true);
   // double degree=Qbla.qibla(coordinates);
    super.initState();

  }
//   String timepresenter(DateTime dateTime){
//     String timeinstring="";
//     bool isgreaterthan12=dateTime.hour>12;
//     String  prefix=dateTime.hour>11?"am":"pm";
// int hour=isgreaterthan12? dateTime.hour-12:dateTime.hour;
// int minute=dateTime.minute;
//     return "$hour :$minute $prefix";
//   }
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (context,constrints){
      final height=constrints.maxHeight;
      final width=constrints.maxWidth;

            coordinates =
                Coordinates(30.033333, 31.233334);

            prayerTimes =
                PrayerTimes(coordinates, date, parameters, precision: true);


            return Scaffold(
              
              appBar: AppBar(
                backgroundColor:                                             Colors.white.withOpacity(.1),

                leading: InkWell(

                    onTap: ()=>Navigator.pop(context),
                    child: Text("خروج",style: TextStyle(color: Colors.blueAccent,fontSize: 20),)),
                elevation: 0,
                actions: [
                  IconButton(


                    onPressed: () =>
                        Navigator.push(context, MaterialPageRoute(builder: (
                            _) => Qbla())),
                    icon: Icon(Icons.location_on_outlined,color: Colors.black,),)
                ],
              ),
             // backgroundColor: Colors.white.withOpacity(.5),
              body: Container(
                  color:                                                     Colors.white.withOpacity(.1),

                  child: Column(
                      children: [
                        // //SizedBox(height: 5,),
                        // Text(" ${date.year} ${date.month.toString()},/${date.day}",
                        //     style: TextStyle(color: Colors.black, fontSize: 30)
                        // ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              // InkWell(
                              // onTap: ()=>date.add(Duration(days: -1)),
                              //   child: Icon(Icons.arrow_forward_ios_rounded,size: 60,color: Colors.white,)),
                              Text(prayerTimes.currentPrayer(date: date).toString(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),),
                              //        InkWell( onTap: ()=>date.add(Duration(days: 1))),
                              // Icon(Icons.arrow_back_ios,size: 60,color: Colors.white,),
                            ]
                        ),


                        SizedBox(height: height * .02,),
                        Expanded(
                          child: Column(
                            children: [



                                    Container(
                                        alignment: Alignment.center,
                                        width: width * .7,
                                        height: height * .13,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Colors.lightBlueAccent    ,
                                                  Colors.lightBlueAccent.withOpacity(.7),
                                                  Colors.lightBlueAccent.withOpacity(.3),

                                                ]
                                            ),
                                            borderRadius: BorderRadius.circular(
                                                30)),
                                        // color: Color(0xFF354890)
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("${prayerTimes.fajr!
                                                .toLocal()
                                                .hour}:${prayerTimes.fajr!
                                                .toLocal()
                                                .minute}", style: TextStyle(
                                                color: Colors.white, fontSize: 30)),
                                            Text("الفجر", style: TextStyle(
                                                color: Colors.white, fontSize: 28)),

                                          ],
                                        )),





                              SizedBox(height: height * .02,),
                              Container(
                                  alignment: Alignment.center,
                                  width: width * .7,
                                  height: height * .13,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.lightBlueAccent    ,
                                            Colors.lightBlueAccent.withOpacity(.7),
                                            Colors.lightBlueAccent.withOpacity(.3),

                                          ]
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          30)),
                                  // color: Color(0xFF354890)
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("${prayerTimes.dhuhr!
                                          .toLocal()
                                          .hour}:${prayerTimes.dhuhr!
                                          .toLocal()
                                          .minute}", style: TextStyle(
                                          color: Colors.white, fontSize: 30)),
                                      Text("الظهر", style: TextStyle(
                                          color: Colors.white, fontSize: 28)),

                                    ],
                                  )),

                              SizedBox(height: height * .02,),
                              Container(
                                  alignment: Alignment.center,
                                  width: width * .7,
                                  height: height * .13,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.lightBlueAccent    ,
                                            Colors.lightBlueAccent.withOpacity(.7),
                                            Colors.lightBlueAccent.withOpacity(.3),

                                          ]
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          30)),
                                  // color: Color(0xFF354890)
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("${prayerTimes.asr!
                                          .toLocal()
                                          .hour}:${prayerTimes.asr!
                                          .toLocal()
                                          .minute}", style: TextStyle(
                                          color: Colors.white, fontSize: 30)),
                                      Text("العصر", style: TextStyle(
                                          color: Colors.white, fontSize: 28)),

                                    ],
                                  )),

                              SizedBox(height: height * .02,),
                              Container(
                                  alignment: Alignment.center,
                                  width: width * .7,
                                  height: height * .13,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.lightBlueAccent    ,
                                            Colors.lightBlueAccent.withOpacity(.7),
                                            Colors.lightBlueAccent.withOpacity(.3),

                                          ]
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          30)),
                                  // color: Color(0xFF354890)
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("${prayerTimes.maghrib!
                                          .toLocal()
                                          .hour}:${prayerTimes.maghrib!
                                          .toLocal()
                                          .minute}", style: TextStyle(
                                          color: Colors.white, fontSize: 30)),
                                      Text("المغرب", style: TextStyle(
                                          color: Colors.white, fontSize: 28)),

                                    ],
                                  )),

                              SizedBox(height: height * .03,),

                              Container(
                                  alignment: Alignment.center,
                                  width: width * .7,
                                  height: height * .13,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.lightBlueAccent    ,
                                            Colors.lightBlueAccent.withOpacity(.7),
                                            Colors.lightBlueAccent.withOpacity(.3),

                                          ]
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          30)),
                                  // color: Color(0xFF354890)
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("${prayerTimes.isha!
                                          .toLocal()
                                          .hour}:${prayerTimes.isha!
                                          .toLocal()
                                          .minute}", style: TextStyle(
                                          color: Colors.white, fontSize: 30)),
                                      Text("العشاء", style: TextStyle(
                                          color: Colors.white, fontSize: 28)),

                                    ],
                                  )),

                            ],
                          ),


                        ),

                      ]
                  ),
                ),
              );
              // bottomNavigationBar: BottomNavigationBar(
              //   onTap: (index){
              //     setState(() {
              //       index=inte;
              //
              //     });},
              //   currentIndex: inte,
              //   items:[
              //
              //       BottomNavigationBarItem(icon: Icon(Icons.access_time),label: "وقت الاذان "),
              //       BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined),label: "اتجاه القبله "),
              //
              //     ],
              //
              // ),


          }

      );



    }





  }



class Navigationpage extends StatefulWidget {
  const Navigationpage({Key? key}) : super(key: key);

  @override
  State<Navigationpage> createState() => _NavigationpageState();
}

class _NavigationpageState extends State<Navigationpage> {
  int inte=0;
  List pages=[
    AdhanScreen(),
    Qbla(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[inte] ,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            index=inte;

          });},
        currentIndex: inte,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.access_time),label: "وقت الاذان "),
          BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined),label: "اتجاه القبله "),

        ],
      ),
    );
  }
}
