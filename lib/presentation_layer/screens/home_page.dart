import 'package:adhan_dart/adhan_dart.dart';
import 'package:azkary/presentation_layer/screens/adhan/adhan_screen.dart';
import 'package:azkary/presentation_layer/screens/azkar/azkar.dart';
import 'package:azkary/presentation_layer/screens/nawawy/homa.dart';
import 'package:azkary/presentation_layer/screens/serah.dart';
import 'package:azkary/presentation_layer/screens/tab_bar/tab_surah.dart';
import 'package:azkary/presentation_layer/screens/weather/weather.dart';
import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';

import 'package:adhan_dart/adhan_dart.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late final WeatherModel weatherModel;
  late PrayerTimes prayerTimes;
  late DateTime date;
  late Coordinates coordinates;
  late CalculationParameters parameters;

  @override
  void initState() {
    coordinates = Coordinates(23.8479, 90.2576);
    date = DateTime.now();
    parameters = CalculationMethod.Egyptian();
    prayerTimes = PrayerTimes(coordinates, date, parameters, precision: true);
    super.initState();
  }

  // String timepresenter(DateTime dateTime){
  //   String timeinstring="";
  //   bool isgreaterthan12=dateTime.hour>12;
  //   String  prefix=dateTime.hour>11?"am":"pm";
  //   int hour=isgreaterthan12? dateTime.hour-12:dateTime.hour;
  //   int minute=dateTime.minute;
  //   return "$hour :$minute $prefix";
  // }

  @override
  Widget build(BuildContext context) {
    prayerTimes = PrayerTimes(coordinates, date, parameters, precision: true);



    var _size = MediaQuery.of(context).size;
    var _hijri = HijriCalendar.now();
    HijriCalendar.setLocal('ar');
    var day = DateTime.now();
    var format = DateFormat('EEE,d MMM yyyy');
    var formated = format.format(day);
    return LayoutBuilder(builder:(context,constrints) {
      final height = constrints.maxHeight;
      final width = constrints.maxWidth;

      coordinates = Coordinates(30.033333, 31.233334);

      prayerTimes =
          PrayerTimes(coordinates, date, parameters, precision: true);

      return Scaffold(


        body: Stack(children: [
         // Expanded(
         //   child: Container(
         //    // width: 400,
         //        height: 400,
         //        child: Column(
         //              children: [
         //                // //SizedBox(height: 5,),
         //                // Text(" ${date.year} ${date.month.toString()},/${date.day}",
         //                //     style: TextStyle(color: Colors.black, fontSize: 30)
         //                // ),
         //
         //
         //                Center(child: Text(
         //                  prayerTimes.currentPrayer(date: date).toString(),
         //                  style: TextStyle(
         //                      color: Colors.black, fontSize: 30),),),
         //
         //
         //                //  SizedBox(height: height*.08),
         //                Row(
         //                  //   mainAxisAlignment: MainAxisAlignment.center,
         //                  children: [
         //
         //                    Container(
         //                      // alignment: Alignment.center,
         //                        width: width * .17,
         //                        height: height * .91,
         //                        decoration: BoxDecoration(
         //                            gradient: LinearGradient(
         //                                colors: [
         //                                  Colors.lightBlueAccent,
         //                                  Colors.lightBlueAccent.withOpacity(.7),
         //                                  Colors.lightBlueAccent.withOpacity(.3),
         //
         //                                ]
         //                            ),
         //                            borderRadius: BorderRadius.circular(
         //                                30)),
         //                        // color: Color(0xFF354890)
         //                        child: Column(
         //                         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         //                          crossAxisAlignment: CrossAxisAlignment.center,
         //                          children: [
         //                            //SizedBox(height: 5,),
         //                            Text("${prayerTimes.fajr!
         //                                .toLocal()
         //                                .hour}:${prayerTimes.fajr!
         //                                .toLocal()
         //                                .minute}", style: TextStyle(
         //                                color: Colors.white, fontSize: 20)),
         //                            Text("الفجر", style: TextStyle(
         //                                color: Colors.white, fontSize: 28)),
         //
         //                          ],
         //                        )),
         //
         //                    SizedBox(width: width * .02,),
         //
         //                    Container(
         //                      // alignment: Alignment.center,
         //                        width: width * .17,
         //                        height: height * .91,
         //                        decoration: BoxDecoration(
         //                            gradient: LinearGradient(
         //                                colors: [
         //                                  Colors.lightBlueAccent,
         //                                  Colors.lightBlueAccent.withOpacity(.7),
         //                                  Colors.lightBlueAccent.withOpacity(.3),
         //
         //                                ]
         //                            ),
         //                            borderRadius: BorderRadius.circular(
         //                                30)),
         //                        // color: Color(0xFF354890)
         //                        child: Column(
         //                          //mainAxisAlignment: MainAxisAlignment.center,
         //                          children: [
         //                            SizedBox(width: 5,),
         //                            Text("${prayerTimes.dhuhr!
         //                                .toLocal()
         //                                .hour}:${prayerTimes.dhuhr!
         //                                .toLocal()
         //                                .minute}", style: TextStyle(
         //                                color: Colors.white, fontSize: 20)),
         //                            Text("الظهر", style: TextStyle(
         //                                color: Colors.white, fontSize: 28)),
         //
         //                          ],
         //                        )),
         //
         //                    SizedBox(width: width * .02,),
         //
         //                    Container(
         //                      // alignment: Alignment.center,
         //                        width: width * .17,
         //                        height: height * .91,
         //                        decoration: BoxDecoration(
         //                            gradient: LinearGradient(
         //                                colors: [
         //                                  Colors.lightBlueAccent,
         //                                  Colors.lightBlueAccent.withOpacity(.7),
         //                                  Colors.lightBlueAccent.withOpacity(.3),
         //
         //                                ]
         //                            ),
         //                            borderRadius: BorderRadius.circular(
         //                                30)),
         //                        // color: Color(0xFF354890)
         //                        child: Column(
         //                          //mainAxisAlignment: MainAxisAlignment.center,
         //                          children: [
         //                            SizedBox(height: 5,),
         //                            Text("${prayerTimes.asr!
         //                                .toLocal()
         //                                .hour}:${prayerTimes.asr!
         //                                .toLocal()
         //                                .minute}", style: TextStyle(
         //                                color: Colors.white, fontSize: 20)),
         //                            Text("العصر", style: TextStyle(
         //                                color: Colors.white, fontSize: 28)),
         //
         //                          ],
         //                        )),
         //                    SizedBox(width: width * .02,),
         //
         //                    Container(
         //                      // alignment: Alignment.center,
         //                        width: width * .19,
         //                        height: height * .91,
         //                        decoration: BoxDecoration(
         //                            gradient: LinearGradient(
         //                                colors: [
         //                                  Colors.lightBlueAccent,
         //                                  Colors.lightBlueAccent.withOpacity(.7),
         //                                  Colors.lightBlueAccent.withOpacity(.3),
         //
         //                                ]
         //                            ),
         //                            borderRadius: BorderRadius.circular(
         //                                30)),
         //                        // color: Color(0xFF354890)
         //                        child: Column(
         //                          //mainAxisAlignment: MainAxisAlignment.center,
         //                          children: [
         //                            SizedBox(height: 5,),
         //                            Text("${prayerTimes.maghrib!
         //                                .toLocal()
         //                                .hour}:${prayerTimes.maghrib!
         //                                .toLocal()
         //                                .minute}", style: TextStyle(
         //                                color: Colors.white, fontSize: 20)),
         //                            Text("المغرب", style: TextStyle(
         //                                color: Colors.white, fontSize: 28)),
         //
         //                          ],
         //                        )),
         //                    SizedBox(width: width * .02,),
         //
         //
         //                    Container(
         //                      // alignment: Alignment.center,
         //                        width: width * .19,
         //                        height: height * .91,
         //                        decoration: BoxDecoration(
         //                            gradient: LinearGradient(
         //                                colors: [
         //                                  Colors.lightBlueAccent,
         //                                  Colors.lightBlueAccent.withOpacity(.7),
         //                                  Colors.lightBlueAccent.withOpacity(.3),
         //
         //                                ]
         //                            ),
         //                            borderRadius: BorderRadius.circular(
         //                                30)),
         //                        // color: Color(0xFF354890)
         //                        child: Column(
         //                          //mainAxisAlignment: MainAxisAlignment.center,
         //                          children: [
         //                            SizedBox(height: 5,),
         //                            Text("${prayerTimes.isha!
         //                                .toLocal()
         //                                .hour}:${prayerTimes.isha!
         //                                .toLocal()
         //                                .minute}", style: TextStyle(
         //                                color: Colors.white, fontSize: 20)),
         //                            Text("العشاء", style: TextStyle(
         //                                color: Colors.white, fontSize: 28)),
         //
         //                          ],
         //                        )),
         //
         //
         //                  ],
         //                ),
         //
         //
         //                SizedBox(height: height * .4,)
         //
         //              ]
         //
         //        ),
         //   ),
         // ),
            

          
      


                


            
          
          Image.asset(
            "images/stac.jpg",
          ),
          Column(children: [
            SizedBox(
              height: 180,
            ),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, int) {
                      return SingleChildScrollView(
                        child: Container(
                          color: Colors.white,
                          child: Expanded(
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.all(2),
                                    width: double.infinity,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      //color: Color(0xFF8fb6f8),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Column(children: [
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Center(
                                            child: Text(
                                              formated,
                                              style: TextStyle(
                                                  fontSize: 26,
                                                  color: Colors.black),
                                            )),
                                        Expanded(
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                    text: _hijri.hDay
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                        Colors.black
                                                            .withOpacity(.8),
                                                        fontWeight: FontWeight
                                                            .bold),
                                                  ),
                                                  TextSpan(
                                                    text: _hijri.longMonthName
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                        Colors.black
                                                            .withOpacity(.8),
                                                        fontWeight: FontWeight
                                                            .bold),
                                                  ),
                                                  TextSpan(
                                                    text: '${_hijri.hYear} AH',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                        Colors.black
                                                            .withOpacity(.9),
                                                        fontWeight: FontWeight
                                                            .bold),
                                                  ),
                                                ]))),
                                      ]),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () =>
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SurElquraan())),
                                      child: Container(
                                        width: 280,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(120),
                                          color: Colors.deepOrangeAccent
                                              .withOpacity(.4),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("القرءان الكريم ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22,
                                                    color: Colors.white)),
                                            Image.asset(
                                              "images/k.png",
                                              width: 40,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () =>
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomeHadith())),
                                      child: Container(
                                        width: 280,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(120),
                                          color: Colors.pink.shade100,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("أحاديث الرسول  ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22,
                                                    color: Colors.white)),
                                            Image.asset(
                                              "images/mohamed2.png",
                                              width: 40,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () =>
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Azkar())),
                                      child: Container(
                                        width: 280,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(120),
                                          color:
                                          Colors.purpleAccent.withOpacity(.5),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("أذكار المسلم",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22,
                                                    color: Colors.white)),
                                            Image.asset(
                                              "images/azka.png",
                                              width: 40,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () =>
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Weather())),
                                      child: Container(
                                        width: 280,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(120),
                                          color:
                                          Colors.blueAccent.withOpacity(.5),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("الطقس اليوم",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22,
                                                    color: Colors.white)),
                                            Image.asset(
                                              "images/clear.png",
                                              width: 40,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),


                                    SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () =>
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Sebha())),
                                      child: Container(
                                        width: 280,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(120),
                                          color: Colors.blueGrey.withOpacity(
                                              .2),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("المسبحه الالكترونيه ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22,
                                                    color: Colors.white)),
                                            Image.asset(
                                              "images/sabh.jpg",
                                              width: 40,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    SizedBox(
                                      height: 20,
                                    ),

                                    InkWell(
                                      onTap: () =>
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AdhanScreen())),
                                      child: Container(
                                        width: 280,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(120),
                                          color: Colors.greenAccent,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("مواقيت الصلاه",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22,
                                                    color: Colors.white)),
                                            Image.asset(
                                              "images/k.png",
                                              width: 40,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }))
          ])
        ]),
      );
    }
    );

  }

  }


//
//
//                              Image.asset(
//                              'images/thunderstorm.png',
//                              width: 300,
//                              height: 100,
//                              ),
//
//                              SizedBox(
//                              height: 10,
//                              ),
//
//                              Container(
//                              width: MediaQuery.of(context).size.width,
//                              height: _size.height,
//                              child: Expanded(
//                              child: Padding(
//                              padding: const EdgeInsets.all(8.0),
//                              child: Column(
//
//                              // mainAxisAlignment: MainAxisAlignment.center,
//                              crossAxisAlignment:
//                              CrossAxisAlignment.center,
//                              children: [
// //Spacer(flex: 1,),
//                              Expanded(
//                              child: Column
//                            }(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .center,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       //  SizedBox(height: 20,),
//
//                                                       // SizedBox(height: 10,),
//
//                                                       Expanded(
//                                                         child: Column(
//                                                           children: [
//                                                             Container(
//                                                               width: 300,
//                                                               height: MediaQuery.of(
//                                                                           context)
//                                                                       .size
//                                                                       .height *
//                                                                   .11,
//                                                               child: Card(
//                                                                 color: Color(
//                                                                     0xFFC48793),
//                                                                 child: Expanded(
//                                                                   child:
//                                                                       Padding(
//                                                                     padding:
//                                                                         const EdgeInsets.all(
//                                                                             8.0),
//                                                                     child:
//                                                                         InkWell(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               30),
//                                                                       onTap:
//                                                                           () {
//                                                                         Navigator.push(
//                                                                             context,
//                                                                             MaterialPageRoute(builder: (contex) => SurElquraan()));
//                                                                       },
//                                                                       child:
//                                                                           Container(
//                                                                         height:
//                                                                             110,
//                                                                         width:
//                                                                             80,
//                                                                         decoration:
//                                                                             BoxDecoration(
//                                                                           borderRadius:
//                                                                               BorderRadius.circular(30),
//                                                                           //  color: Colors.blueGrey
//                                                                         ),
//                                                                         child:
//                                                                             Row(
//                                                                           crossAxisAlignment:
//                                                                               CrossAxisAlignment.center,
//                                                                           mainAxisAlignment:
//                                                                               MainAxisAlignment.center,
//                                                                           children: [
//                                                                             Image.asset(
//                                                                               'images/k.png',
//                                                                               width: 60,
//                                                                               height: 60,
//                                                                             ),
//                                                                             Spacer(),
//                                                                             Center(
//                                                                               child: Text(
//                                                                                 'القرءان الكريم  ',
//                                                                                 style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//                                                                               ),
//                                                                             )
//                                                                           ],
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             SizedBox(
//                                                               height: 10,
//                                                             ),
//                                                             Container(
//                                                               width: 300,
//                                                               height: MediaQuery.of(
//                                                                           context)
//                                                                       .size
//                                                                       .height *
//                                                                   .11,
//                                                               child: Card(
//                                                                 color: Colors
//                                                                     .lightBlueAccent
//                                                                     .withOpacity(
//                                                                         .4),
//                                                                 child: Expanded(
//                                                                   //  padding: const EdgeInsets.all(8.0),
//                                                                   child:
//                                                                       InkWell(
//                                                                     borderRadius:
//                                                                         BorderRadius.circular(
//                                                                             30),
//                                                                     onTap: () {
//                                                                       Navigator.push(
//                                                                           context,
//                                                                           MaterialPageRoute(
//                                                                               builder: (contex) => AdhanScreen()));
//                                                                     },
//                                                                     child:
//                                                                         Expanded(
//                                                                       child:
//                                                                           Container(
//                                                                         height:
//                                                                             110,
//                                                                         width:
//                                                                             80,
//                                                                         decoration:
//                                                                             BoxDecoration(
//                                                                           borderRadius:
//                                                                               BorderRadius.circular(30),
//                                                                           // color: Colors.deepPurple.withOpacity(.4)
//                                                                           //,
//                                                                         ),
//                                                                         child:
//                                                                             Row(
//                                                                           crossAxisAlignment:
//                                                                               CrossAxisAlignment.center,
//                                                                           mainAxisAlignment:
//                                                                               MainAxisAlignment.center,
//                                                                           children: [
//                                                                             Image.asset(
//                                                                               'images/salah.jpg',
//                                                                               height: 60,
//                                                                               width: 60,
//                                                                             ),
//                                                                             Spacer(),
//                                                                             Center(
//                                                                               child: Text(
//                                                                                 ' مواقيت الصلاه ',
//                                                                                 style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//                                                                               ),
//                                                                             )
//                                                                           ],
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             SizedBox(
//                                                               height: 10,
//                                                             ),
//
//                                                             Container(
//                                                               width: 300,
//                                                               height: MediaQuery.of(
//                                                                           context)
//                                                                       .size
//                                                                       .height *
//                                                                   .11,
//                                                               child: Card(
//                                                                 color: Colors
//                                                                     .deepPurple
//                                                                     .withOpacity(
//                                                                         .4),
//                                                                 child: Expanded(
//                                                                   child:
//                                                                       Padding(
//                                                                     padding:
//                                                                         const EdgeInsets.all(
//                                                                             8.0),
//                                                                     child:
//                                                                         InkWell(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               30),
//                                                                       onTap:
//                                                                           () {
//                                                                         Navigator.push(
//                                                                             context,
//                                                                             MaterialPageRoute(builder: (contex) => Sebha()));
//                                                                       },
//                                                                       child:
//                                                                           Container(
//                                                                         height:
//                                                                             110,
//                                                                         width:
//                                                                             80,
//                                                                         decoration:
//                                                                             BoxDecoration(
//                                                                           borderRadius:
//                                                                               BorderRadius.circular(120),
//                                                                           //  color: Colors.blueGrey
//                                                                           // ,
// //
//                                                                         ),
//                                                                         child:
//                                                                             Padding(
//                                                                           padding:
//                                                                               const EdgeInsets.all(5),
//                                                                           child:
//                                                                               Row(
//                                                                             crossAxisAlignment:
//                                                                                 CrossAxisAlignment.center,
//                                                                             mainAxisAlignment:
//                                                                                 MainAxisAlignment.center,
//                                                                             children: [
//                                                                               Image.asset(
//                                                                                 'images/sssssssss.webp',
//                                                                                 width: 60,
//                                                                                 height: 60,
//                                                                               ),
//                                                                               Spacer(),
//                                                                               Center(
//                                                                                 child: Text(
//                                                                                   'السبحه ',
//                                                                                   style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
//                                                                                 ),
//                                                                               )
//                                                                             ],
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//
//                                                             SizedBox(
//                                                               height: 10,
//                                                             ),
//                                                             Container(
//                                                               width: 300,
//                                                               height: MediaQuery.of(
//                                                                           context)
//                                                                       .size
//                                                                       .height *
//                                                                   .12,
//                                                               child: Card(
//                                                                 color: Colors
//                                                                     .deepOrange
//                                                                     .withOpacity(
//                                                                         .4),
//                                                                 child: Expanded(
//                                                                   child:
//                                                                       Padding(
//                                                                     padding:
//                                                                         const EdgeInsets.all(
//                                                                             8.0),
//                                                                     child:
//                                                                         InkWell(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               30),
//                                                                       onTap:
//                                                                           () {
//                                                                         Navigator.push(
//                                                                             context,
//                                                                             MaterialPageRoute(builder: (contex) => Azkar()));
//                                                                       },
//                                                                       child:
//                                                                           Container(
//                                                                         height:
//                                                                             120,
//                                                                         width:
//                                                                             80,
//                                                                         decoration:
//                                                                             BoxDecoration(
//                                                                           borderRadius:
//                                                                               BorderRadius.circular(30),
//                                                                           // color: Colors.blueGrey,
//                                                                           //
//                                                                           // boxShadow: [
//                                                                           //   BoxShadow(
//                                                                           //     blurRadius: 30,
//                                                                           //     offset: Offset(-28,-28),
//                                                                           //     color: Colors.deepOrange,
//                                                                           //   ),
//                                                                           //   BoxShadow(
//                                                                           //     blurRadius: 30,
//                                                                           //     offset: Offset(10,10),
//                                                                           //     color: Colors.deepOrangeAccent,
//                                                                           //
//                                                                           //   ),
//                                                                           // ]
//                                                                         ),
//                                                                         child:
//                                                                             Padding(
//                                                                           padding:
//                                                                               const EdgeInsets.all(5),
//                                                                           child:
//                                                                               Row(
//                                                                             crossAxisAlignment:
//                                                                                 CrossAxisAlignment.start,
//                                                                             //  mainAxisAlignment: MainAxisAlignment.start,
//                                                                             children: [
//                                                                               Center(
//                                                                                   child: Image.asset(
//                                                                                 'images/gg.jpg',
//                                                                                 width: 50,
//                                                                                 height: 60,
//                                                                               )),
//                                                                               Spacer(),
//                                                                               Center(
//                                                                                 child: Text(
//                                                                                   'الاذكار  ',
//                                                                                   style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//                                                                                 ),
//                                                                               )
//                                                                             ],
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             SizedBox(
//                                                               height: 10,
//                                                             ),
//
//                                                             Container(
//                                                               width: 300,
//                                                               height: MediaQuery.of(
//                                                                           context)
//                                                                       .size
//                                                                       .height *
//                                                                   .11,
//                                                               child: Card(
//                                                                 color: Colors
//                                                                     .blueGrey,
//                                                                 child: Expanded(
//                                                                   child:
//                                                                       Padding(
//                                                                     padding:
//                                                                         const EdgeInsets.all(
//                                                                             8.0),
//                                                                     child:
//                                                                         InkWell(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               30),
//                                                                       onTap:
//                                                                           () {
//                                                                         Navigator.push(
//                                                                             context,
//                                                                             MaterialPageRoute(builder: (contex) => Hadithscren()));
//                                                                       },
//                                                                       child:
//                                                                           Expanded(
//                                                                         child:
//                                                                             Container(
//                                                                           height:
//                                                                               110,
//                                                                           width:
//                                                                               80,
//                                                                           decoration:
//                                                                               BoxDecoration(
//                                                                             borderRadius:
//                                                                                 BorderRadius.circular(30),
//                                                                             //  color: Colors.blueGrey,
//
//                                                                             // boxShadow: [
//                                                                             //   BoxShadow(
//                                                                             //     blurRadius: 30,
//                                                                             //     offset: Offset(-28,-28),
//                                                                             //     color: Colors.deepOrange,
//                                                                             //   ),
//                                                                             //   BoxShadow(
//                                                                             //     blurRadius: 30,
//                                                                             //     offset: Offset(10,10),
//                                                                             //     color: Colors.deepOrangeAccent,
//                                                                             //
//                                                                             //   ),
//                                                                             // ]
//                                                                           ),
//                                                                           child:
//                                                                               Row(
//                                                                             crossAxisAlignment:
//                                                                                 CrossAxisAlignment.center,
//                                                                             mainAxisAlignment:
//                                                                                 MainAxisAlignment.center,
//                                                                             children: [
//                                                                               Image.asset(
//                                                                                 'images/mohamed2.png',
//                                                                                 height: 50,
//                                                                                 width: 60,
//                                                                               ),
//                                                                               Spacer(),
//                                                                               Center(
//                                                                                 child: Text(
//                                                                                   ' احاديث ',
//                                                                                   style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//                                                                                 ),
//                                                                               )
//                                                                             ],
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//
//                                                             SizedBox(
//                                                               height: 10,
//                                                             ),
//                                                             // Container(
//                                                             //   width: 300,
//                                                             //   height: MediaQuery.of(
//                                                             //               context)
//                                                             //           .size
//                                                             //           .height *
//                                                             //       .11,
//                                                             //   child: Card(
//                                                             //     color: Colors
//                                                             //         .red
//                                                             //         .withOpacity(
//                                                             //             .4),
//                                                             //     child: Expanded(
//                                                             //       child:
//                                                             //           Padding(
//                                                             //         padding:
//                                                             //             const EdgeInsets.all(
//                                                             //                 8.0),
//                                                             //         child:
//                                                             //             InkWell(
//                                                             //           borderRadius:
//                                                             //               BorderRadius.circular(
//                                                             //                   30),
//                                                             //           onTap:
//                                                             //               () {
//                                                             //             //   Navigator.push(context, MaterialPageRoute(builder: (contex)=>Koraan()));
//                                                             //           },
//                                                             //           child:
//                                                             //               Container(
//                                                             //             height:
//                                                             //                 110,
//                                                             //             width:
//                                                             //                 80,
//                                                             //             decoration:
//                                                             //                 BoxDecoration(
//                                                             //               borderRadius:
//                                                             //                   BorderRadius.circular(30),
//                                                             //               //  color: Colors.blueGrey,
//                                                             //
//                                                             //               // boxShadow: [
//                                                             //               //   BoxShadow(
//                                                             //               //     blurRadius: 30,
//                                                             //               //     offset: Offset(-28,-28),
//                                                             //               //     color: Colors.deepOrange,
//                                                             //               //   ),
//                                                             //               //   BoxShadow(
//                                                             //               //     blurRadius: 30,
//                                                             //               //     offset: Offset(10,10),
//                                                             //               //     color: Colors.deepOrangeAccent,
//                                                             //               //
//                                                             //               //   ),
//                                                             //               // ]
//                                                             //             ),
//                                                             //             child:
//                                                             //                 Row(
//                                                             //               crossAxisAlignment:
//                                                             //                   CrossAxisAlignment.center,
//                                                             //               mainAxisAlignment:
//                                                             //                   MainAxisAlignment.center,
//                                                             //               children: [
//                                                             //                 Image.asset(
//                                                             //                   'images/mohamed.jpg',
//                                                             //                   width: 60,
//                                                             //                   height: 60,
//                                                             //                 ),
//                                                             //                 Spacer(),
//                                                             //                 Center(
//                                                             //                   child: Text(
//                                                             //                     'السيره النبويه ',
//                                                             //                     style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//                                                             //                   ),
//                                                             //                 )
//                                                             //               ],
//                                                             //             ),
//                                                             //           ),
//                                                             //         ),
//                                                             //       ),
//                                                             //     ),
//                                                             //   ),
//                                                             // ),
//                                                             SizedBox(
//                                                               height: 10,
//                                                             ),
//
//                                                             Container(
//                                                               width: 300,
//                                                               height: MediaQuery.of(
//                                                                           context)
//                                                                       .size
//                                                                       .height *
//                                                                   .1,
//                                                               child: Card(
//                                                                 color:
//                                                                     Colors.cyan,
//                                                                 child: Expanded(
//                                                                   child:
//                                                                       InkWell(
//                                                                     borderRadius:
//                                                                         BorderRadius.circular(
//                                                                             80),
//                                                                     onTap: () {
//
//                                                                         Navigator.push(context,
//                                                                             MaterialPageRoute(builder: (contex)=>Weather()));
//                                                                     },
//                                                                     child:
//                                                                         Expanded(
//                                                                       child:
//                                                                           Container(
//                                                                         height:
//                                                                             110,
//                                                                         width:
//                                                                             80,
//                                                                         decoration:
//                                                                             BoxDecoration(
//                                                                           borderRadius:
//                                                                               BorderRadius.circular(30),
//                                                                           // color: Colors.blueGrey,
//                                                                         ),
//                                                                         child:
//                                                                             Row(
//                                                                           crossAxisAlignment:
//                                                                               CrossAxisAlignment.center,
//                                                                           mainAxisAlignment:
//                                                                               MainAxisAlignment.center,
//                                                                           children: [
//                                                                             Image.asset(
//                                                                               'images/weth.png',
//                                                                               height: 60,
//                                                                               width: 60,
//                                                                             ),
//                                                                             Spacer(),
//                                                                             Center(
//                                                                               child: Text(
//                                                                                 "طقس اليوم",
//                                                                                 style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//                                                                               ),
//                                                                             )
//                                                                           ],
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             //   SizedBox(height: 10,),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 // SizedBox(height: 20,),
//                                               ])))



//                       (BuildContext context, int index) {
//                     return SingleChildScrollView(
//                       child: Container(
//                         color: Colors.white,
//                         child: Expanded(
//                           child: Column(
//                             children: [
//                               Center(
//                                 child: Container(
//                                     margin: EdgeInsets.all(2),
//                                     width: double.infinity,
//                                     height: 90,
//                                     decoration: BoxDecoration(
//                                       //color: Color(0xFF8fb6f8),
//                                       borderRadius: BorderRadius.circular(30),
//                                     ),
//                                     child: Center(
//                                         child: Column(
//                                       children: [
//                                         SizedBox(
//                                           height: 30,
//                                         ),
//                                         Center(
//                                             child: Text(
//                                           formated,
//                                           style: TextStyle(
//                                               fontSize: 26,
//                                               color: Colors.black),
//                                         )),
//                                         Expanded(
//                                           child: RichText(
//                                               text: TextSpan(children: [
//                                             TextSpan(
//                                               text: _hijri.hDay.toString(),
//                                               style: TextStyle(
//                                                   fontSize: 20,
//                                                   color: Colors.black
//                                                       .withOpacity(.8),
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             TextSpan(
//                                               text: _hijri.longMonthName
//                                                   .toString(),
//                                               style: TextStyle(
//                                                   fontSize: 20,
//                                                   color: Colors.black
//                                                       .withOpacity(.8),
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             TextSpan(
//                                               text: '${_hijri.hYear} AH',
//                                               style: TextStyle(
//                                                   fontSize: 20,
//                                                   color: Colors.black
//                                                       .withOpacity(.9),
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                           ])),
//
//
//
//
//
//                              Image.asset(
//                              'images/thunderstorm.png',
//                              width: 300,
//                              height: 100,
//                              ),
//
//                              SizedBox(
//                              height: 10,
//                              ),
//
//                              Container(
//                              width: MediaQuery.of(context).size.width,
//                              height: _size.height,
//                              child: Expanded(
//                              child: Padding(
//                              padding: const EdgeInsets.all(8.0),
//                              child: Column(
//
//                              // mainAxisAlignment: MainAxisAlignment.center,
//                              crossAxisAlignment:
//                              CrossAxisAlignment.center,
//                              children: [
// //Spacer(flex: 1,),
//                              Expanded(
//                              child: Column
//                            }(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .center,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       //  SizedBox(height: 20,),
//
//                                                       // SizedBox(height: 10,),
//
//                                                       Expanded(
//                                                         child: Column(
//                                                           children: [
//                                                             Container(
//                                                               width: 300,
//                                                               height: MediaQuery.of(
//                                                                           context)
//                                                                       .size
//                                                                       .height *
//                                                                   .11,
//                                                               child: Card(
//                                                                 color: Color(
//                                                                     0xFFC48793),
//                                                                 child: Expanded(
//                                                                   child:
//                                                                       Padding(
//                                                                     padding:
//                                                                         const EdgeInsets.all(
//                                                                             8.0),
//                                                                     child:
//                                                                         InkWell(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               30),
//                                                                       onTap:
//                                                                           () {
//                                                                         Navigator.push(
//                                                                             context,
//                                                                             MaterialPageRoute(builder: (contex) => SurElquraan()));
//                                                                       },
//                                                                       child:
//                                                                           Container(
//                                                                         height:
//                                                                             110,
//                                                                         width:
//                                                                             80,
//                                                                         decoration:
//                                                                             BoxDecoration(
//                                                                           borderRadius:
//                                                                               BorderRadius.circular(30),
//                                                                           //  color: Colors.blueGrey
//                                                                         ),
//                                                                         child:
//                                                                             Row(
//                                                                           crossAxisAlignment:
//                                                                               CrossAxisAlignment.center,
//                                                                           mainAxisAlignment:
//                                                                               MainAxisAlignment.center,
//                                                                           children: [
//                                                                             Image.asset(
//                                                                               'images/k.png',
//                                                                               width: 60,
//                                                                               height: 60,
//                                                                             ),
//                                                                             Spacer(),
//                                                                             Center(
//                                                                               child: Text(
//                                                                                 'القرءان الكريم  ',
//                                                                                 style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//                                                                               ),
//                                                                             )
//                                                                           ],
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             SizedBox(
//                                                               height: 10,
//                                                             ),
//                                                             Container(
//                                                               width: 300,
//                                                               height: MediaQuery.of(
//                                                                           context)
//                                                                       .size
//                                                                       .height *
//                                                                   .11,
//                                                               child: Card(
//                                                                 color: Colors
//                                                                     .lightBlueAccent
//                                                                     .withOpacity(
//                                                                         .4),
//                                                                 child: Expanded(
//                                                                   //  padding: const EdgeInsets.all(8.0),
//                                                                   child:
//                                                                       InkWell(
//                                                                     borderRadius:
//                                                                         BorderRadius.circular(
//                                                                             30),
//                                                                     onTap: () {
//                                                                       Navigator.push(
//                                                                           context,
//                                                                           MaterialPageRoute(
//                                                                               builder: (contex) => AdhanScreen()));
//                                                                     },
//                                                                     child:
//                                                                         Expanded(
//                                                                       child:
//                                                                           Container(
//                                                                         height:
//                                                                             110,
//                                                                         width:
//                                                                             80,
//                                                                         decoration:
//                                                                             BoxDecoration(
//                                                                           borderRadius:
//                                                                               BorderRadius.circular(30),
//                                                                           // color: Colors.deepPurple.withOpacity(.4)
//                                                                           //,
//                                                                         ),
//                                                                         child:
//                                                                             Row(
//                                                                           crossAxisAlignment:
//                                                                               CrossAxisAlignment.center,
//                                                                           mainAxisAlignment:
//                                                                               MainAxisAlignment.center,
//                                                                           children: [
//                                                                             Image.asset(
//                                                                               'images/salah.jpg',
//                                                                               height: 60,
//                                                                               width: 60,
//                                                                             ),
//                                                                             Spacer(),
//                                                                             Center(
//                                                                               child: Text(
//                                                                                 ' مواقيت الصلاه ',
//                                                                                 style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//                                                                               ),
//                                                                             )
//                                                                           ],
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             SizedBox(
//                                                               height: 10,
//                                                             ),
//
//                                                             Container(
//                                                               width: 300,
//                                                               height: MediaQuery.of(
//                                                                           context)
//                                                                       .size
//                                                                       .height *
//                                                                   .11,
//                                                               child: Card(
//                                                                 color: Colors
//                                                                     .deepPurple
//                                                                     .withOpacity(
//                                                                         .4),
//                                                                 child: Expanded(
//                                                                   child:
//                                                                       Padding(
//                                                                     padding:
//                                                                         const EdgeInsets.all(
//                                                                             8.0),
//                                                                     child:
//                                                                         InkWell(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               30),
//                                                                       onTap:
//                                                                           () {
//                                                                         Navigator.push(
//                                                                             context,
//                                                                             MaterialPageRoute(builder: (contex) => Sebha()));
//                                                                       },
//                                                                       child:
//                                                                           Container(
//                                                                         height:
//                                                                             110,
//                                                                         width:
//                                                                             80,
//                                                                         decoration:
//                                                                             BoxDecoration(
//                                                                           borderRadius:
//                                                                               BorderRadius.circular(120),
//                                                                           //  color: Colors.blueGrey
//                                                                           // ,
// //
//                                                                         ),
//                                                                         child:
//                                                                             Padding(
//                                                                           padding:
//                                                                               const EdgeInsets.all(5),
//                                                                           child:
//                                                                               Row(
//                                                                             crossAxisAlignment:
//                                                                                 CrossAxisAlignment.center,
//                                                                             mainAxisAlignment:
//                                                                                 MainAxisAlignment.center,
//                                                                             children: [
//                                                                               Image.asset(
//                                                                                 'images/sssssssss.webp',
//                                                                                 width: 60,
//                                                                                 height: 60,
//                                                                               ),
//                                                                               Spacer(),
//                                                                               Center(
//                                                                                 child: Text(
//                                                                                   'السبحه ',
//                                                                                   style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
//                                                                                 ),
//                                                                               )
//                                                                             ],
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//
//                                                             SizedBox(
//                                                               height: 10,
//                                                             ),
//                                                             Container(
//                                                               width: 300,
//                                                               height: MediaQuery.of(
//                                                                           context)
//                                                                       .size
//                                                                       .height *
//                                                                   .12,
//                                                               child: Card(
//                                                                 color: Colors
//                                                                     .deepOrange
//                                                                     .withOpacity(
//                                                                         .4),
//                                                                 child: Expanded(
//                                                                   child:
//                                                                       Padding(
//                                                                     padding:
//                                                                         const EdgeInsets.all(
//                                                                             8.0),
//                                                                     child:
//                                                                         InkWell(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               30),
//                                                                       onTap:
//                                                                           () {
//                                                                         Navigator.push(
//                                                                             context,
//                                                                             MaterialPageRoute(builder: (contex) => Azkar()));
//                                                                       },
//                                                                       child:
//                                                                           Container(
//                                                                         height:
//                                                                             120,
//                                                                         width:
//                                                                             80,
//                                                                         decoration:
//                                                                             BoxDecoration(
//                                                                           borderRadius:
//                                                                               BorderRadius.circular(30),
//                                                                           // color: Colors.blueGrey,
//                                                                           //
//                                                                           // boxShadow: [
//                                                                           //   BoxShadow(
//                                                                           //     blurRadius: 30,
//                                                                           //     offset: Offset(-28,-28),
//                                                                           //     color: Colors.deepOrange,
//                                                                           //   ),
//                                                                           //   BoxShadow(
//                                                                           //     blurRadius: 30,
//                                                                           //     offset: Offset(10,10),
//                                                                           //     color: Colors.deepOrangeAccent,
//                                                                           //
//                                                                           //   ),
//                                                                           // ]
//                                                                         ),
//                                                                         child:
//                                                                             Padding(
//                                                                           padding:
//                                                                               const EdgeInsets.all(5),
//                                                                           child:
//                                                                               Row(
//                                                                             crossAxisAlignment:
//                                                                                 CrossAxisAlignment.start,
//                                                                             //  mainAxisAlignment: MainAxisAlignment.start,
//                                                                             children: [
//                                                                               Center(
//                                                                                   child: Image.asset(
//                                                                                 'images/gg.jpg',
//                                                                                 width: 50,
//                                                                                 height: 60,
//                                                                               )),
//                                                                               Spacer(),
//                                                                               Center(
//                                                                                 child: Text(
//                                                                                   'الاذكار  ',
//                                                                                   style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//                                                                                 ),
//                                                                               )
//                                                                             ],
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             SizedBox(
//                                                               height: 10,
//                                                             ),
//
//                                                             Container(
//                                                               width: 300,
//                                                               height: MediaQuery.of(
//                                                                           context)
//                                                                       .size
//                                                                       .height *
//                                                                   .11,
//                                                               child: Card(
//                                                                 color: Colors
//                                                                     .blueGrey,
//                                                                 child: Expanded(
//                                                                   child:
//                                                                       Padding(
//                                                                     padding:
//                                                                         const EdgeInsets.all(
//                                                                             8.0),
//                                                                     child:
//                                                                         InkWell(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               30),
//                                                                       onTap:
//                                                                           () {
//                                                                         Navigator.push(
//                                                                             context,
//                                                                             MaterialPageRoute(builder: (contex) => Hadithscren()));
//                                                                       },
//                                                                       child:
//                                                                           Expanded(
//                                                                         child:
//                                                                             Container(
//                                                                           height:
//                                                                               110,
//                                                                           width:
//                                                                               80,
//                                                                           decoration:
//                                                                               BoxDecoration(
//                                                                             borderRadius:
//                                                                                 BorderRadius.circular(30),
//                                                                             //  color: Colors.blueGrey,
//
//                                                                             // boxShadow: [
//                                                                             //   BoxShadow(
//                                                                             //     blurRadius: 30,
//                                                                             //     offset: Offset(-28,-28),
//                                                                             //     color: Colors.deepOrange,
//                                                                             //   ),
//                                                                             //   BoxShadow(
//                                                                             //     blurRadius: 30,
//                                                                             //     offset: Offset(10,10),
//                                                                             //     color: Colors.deepOrangeAccent,
//                                                                             //
//                                                                             //   ),
//                                                                             // ]
//                                                                           ),
//                                                                           child:
//                                                                               Row(
//                                                                             crossAxisAlignment:
//                                                                                 CrossAxisAlignment.center,
//                                                                             mainAxisAlignment:
//                                                                                 MainAxisAlignment.center,
//                                                                             children: [
//                                                                               Image.asset(
//                                                                                 'images/mohamed2.png',
//                                                                                 height: 50,
//                                                                                 width: 60,
//                                                                               ),
//                                                                               Spacer(),
//                                                                               Center(
//                                                                                 child: Text(
//                                                                                   ' احاديث ',
//                                                                                   style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//                                                                                 ),
//                                                                               )
//                                                                             ],
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//
//                                                             SizedBox(
//                                                               height: 10,
//                                                             ),
//                                                             // Container(
//                                                             //   width: 300,
//                                                             //   height: MediaQuery.of(
//                                                             //               context)
//                                                             //           .size
//                                                             //           .height *
//                                                             //       .11,
//                                                             //   child: Card(
//                                                             //     color: Colors
//                                                             //         .red
//                                                             //         .withOpacity(
//                                                             //             .4),
//                                                             //     child: Expanded(
//                                                             //       child:
//                                                             //           Padding(
//                                                             //         padding:
//                                                             //             const EdgeInsets.all(
//                                                             //                 8.0),
//                                                             //         child:
//                                                             //             InkWell(
//                                                             //           borderRadius:
//                                                             //               BorderRadius.circular(
//                                                             //                   30),
//                                                             //           onTap:
//                                                             //               () {
//                                                             //             //   Navigator.push(context, MaterialPageRoute(builder: (contex)=>Koraan()));
//                                                             //           },
//                                                             //           child:
//                                                             //               Container(
//                                                             //             height:
//                                                             //                 110,
//                                                             //             width:
//                                                             //                 80,
//                                                             //             decoration:
//                                                             //                 BoxDecoration(
//                                                             //               borderRadius:
//                                                             //                   BorderRadius.circular(30),
//                                                             //               //  color: Colors.blueGrey,
//                                                             //
//                                                             //               // boxShadow: [
//                                                             //               //   BoxShadow(
//                                                             //               //     blurRadius: 30,
//                                                             //               //     offset: Offset(-28,-28),
//                                                             //               //     color: Colors.deepOrange,
//                                                             //               //   ),
//                                                             //               //   BoxShadow(
//                                                             //               //     blurRadius: 30,
//                                                             //               //     offset: Offset(10,10),
//                                                             //               //     color: Colors.deepOrangeAccent,
//                                                             //               //
//                                                             //               //   ),
//                                                             //               // ]
//                                                             //             ),
//                                                             //             child:
//                                                             //                 Row(
//                                                             //               crossAxisAlignment:
//                                                             //                   CrossAxisAlignment.center,
//                                                             //               mainAxisAlignment:
//                                                             //                   MainAxisAlignment.center,
//                                                             //               children: [
//                                                             //                 Image.asset(
//                                                             //                   'images/mohamed.jpg',
//                                                             //                   width: 60,
//                                                             //                   height: 60,
//                                                             //                 ),
//                                                             //                 Spacer(),
//                                                             //                 Center(
//                                                             //                   child: Text(
//                                                             //                     'السيره النبويه ',
//                                                             //                     style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//                                                             //                   ),
//                                                             //                 )
//                                                             //               ],
//                                                             //             ),
//                                                             //           ),
//                                                             //         ),
//                                                             //       ),
//                                                             //     ),
//                                                             //   ),
//                                                             // ),
//                                                             SizedBox(
//                                                               height: 10,
//                                                             ),
//
//                                                             Container(
//                                                               width: 300,
//                                                               height: MediaQuery.of(
//                                                                           context)
//                                                                       .size
//                                                                       .height *
//                                                                   .1,
//                                                               child: Card(
//                                                                 color:
//                                                                     Colors.cyan,
//                                                                 child: Expanded(
//                                                                   child:
//                                                                       InkWell(
//                                                                     borderRadius:
//                                                                         BorderRadius.circular(
//                                                                             80),
//                                                                     onTap: () {
//
//                                                                         Navigator.push(context,
//                                                                             MaterialPageRoute(builder: (contex)=>Weather()));
//                                                                     },
//                                                                     child:
//                                                                         Expanded(
//                                                                       child:
//                                                                           Container(
//                                                                         height:
//                                                                             110,
//                                                                         width:
//                                                                             80,
//                                                                         decoration:
//                                                                             BoxDecoration(
//                                                                           borderRadius:
//                                                                               BorderRadius.circular(30),
//                                                                           // color: Colors.blueGrey,
//                                                                         ),
//                                                                         child:
//                                                                             Row(
//                                                                           crossAxisAlignment:
//                                                                               CrossAxisAlignment.center,
//                                                                           mainAxisAlignment:
//                                                                               MainAxisAlignment.center,
//                                                                           children: [
//                                                                             Image.asset(
//                                                                               'images/weth.png',
//                                                                               height: 60,
//                                                                               width: 60,
//                                                                             ),
//                                                                             Spacer(),
//                                                                             Center(
//                                                                               child: Text(
//                                                                                 "طقس اليوم",
//                                                                                 style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//                                                                               ),
//                                                                             )
//                                                                           ],
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             //   SizedBox(height: 10,),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 // SizedBox(height: 20,),
//                                               ])))

//  SizedBox(height: 10,),
// LayoutBuilder(builder: (context,constrints){
//     final height=constrints.maxHeight;
//     final width=constrints.maxWidth;
//     return Scaffold(
//
//       backgroundColor: Color(0xFF8fb6f8),
//       body: Column(
//         children: [
//           Text("${date.day}/${date.month.toString()}/ ${date.year}",style: TextStyle(color: Colors.white,fontSize: 30)
//           ),
//           Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//
//               children: [
//                 // InkWell(
//                 //   onTap: ()=>date.add(Duration(days: -1)),
//                 //     child: Icon(Icons.arrow_forward_ios_rounded,size: 60,color: Colors.white,)),
//                 Text(prayerTimes.currentPrayer(date: date).toString(),style: TextStyle(color: Colors.white,fontSize: 30),),
//                 //        InkWell( onTap: ()=>date.add(Duration(days: 1))),
//                 // Icon(Icons.arrow_back_ios,size: 60,color: Colors.white,),
//               ]
//           ),
//
//
//           //   Text(prayerTimes.nextPrayer(),style: TextStyle(color: Colors.white,fontSize: 20)),
//
//           // Text(timepresenter.toString()),
//           //  Text(date.timeZoneName,style: TextStyle(color: Colors.white,fontSize: 20)),
//           // Row(
//           //   mainAxisAlignment: MainAxisAlignment.center,
//           //   children: [
//           //     Text(coordinates.latitude.toString(),style: TextStyle(color: Colors.white,fontSize: 20)),
//           //     Text(coordinates.longitude.toString(),style: TextStyle(color: Colors.white,fontSize: 20)),
//           //
//           //   ],
//           // ),
//           SizedBox(height: height*.02,),
//           Expanded(
//             child: Column(
//               children: [
//                 Container(
//                   //alignment: Alignment.centerLeft,
//                   width: width*.8,
//                   height: height*.15,
//                   decoration: BoxDecoration(
//                     borderRadius:  BorderRadius.circular(30),
//                     // color: Color(0xFF354890)
//                   ),
//                   child: Card(
//                     color:Color(0xFF354890) ,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("${prayerTimes.fajr!.hour}:${prayerTimes.fajr!.minute}",style: TextStyle(color: Colors.white,fontSize: 40)),
//                         Text("الفجر",style: TextStyle(color: Colors.white,fontSize: 40)),
//
//                       ],
//                     ),
//
//
//                   ),
//                 ),
//                 SizedBox(height: height*.02,),
//                 Container(
//                   alignment: Alignment.centerRight,
//                   width: width*.8,
//                   height: height*.15,
//                   decoration: BoxDecoration(
//                     borderRadius:  BorderRadius.circular(90),
//                     // color: Color(0xFF354890)
//                   ),
//                   child: Card(
//                     color:Color(0xFF354890) ,
//
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("${prayerTimes.dhuhr!.hour}:${prayerTimes.dhuhr!.minute}",style: TextStyle(color: Colors.white,fontSize: 40)),
//                         Text("الظهر",style: TextStyle(color: Colors.white,fontSize: 40)),
//
//                       ],
//                     ),
//
//
//                   ),
//                 ),
//
//                 SizedBox(height: height*.02,),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   width: width*.8,
//                   height: height*.15,
//                   decoration: BoxDecoration(
//                     borderRadius:  BorderRadius.circular(30),
//                   ),
//                   child: Card(
//                     color: Color(0xFF354890),
//
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("${prayerTimes.asr!.hour}:${prayerTimes.asr!.minute}",style: TextStyle(color: Colors.white,fontSize: 40)),
//                         Text("العصر",style: TextStyle(color: Colors.white,fontSize: 40)),
//
//                       ],
//                     ),
//
//
//                   ),
//                 ),
//
//                 SizedBox(height: height*.02,),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   width: width*.8,
//                   height: height*.15,
//                   decoration: BoxDecoration(
//                     borderRadius:  BorderRadius.circular(30),
//                   ),
//                   child: Card(
//                     color: Color(0xFF354890)
//                     ,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("${prayerTimes.maghrib!.hour}:${prayerTimes.maghrib!.minute}",style: TextStyle(color: Colors.white,fontSize: 40)),
//                         Text("المغرب",style: TextStyle(color: Colors.white,fontSize: 40)),
//
//                       ],
//                     ),
//
//
//                   ),
//                 ),
//
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   width: width*.8,
//                   height: height*.15,
//                   decoration: BoxDecoration(
//                     borderRadius:  BorderRadius.circular(30),
//                   ),
//                   child: Card(
//                     color: Color(0xFF354890),
//
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("${prayerTimes.isha!.hour}:${prayerTimes.isha!.minute}",style: TextStyle(color: Colors.white,fontSize: 40)),
//                         Text("العشاء",style: TextStyle(color: Colors.white,fontSize: 40)),
//
//                       ],
//                     ),
//
//
//                   ),
//                 ),
//
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//
//
//
//   },
//
//
//
//   ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   }),
//             ),
//           ],
//         ),
//       ],
//     ));
//   }
// }
//                                 SingleChildScrollView(
//                                   child: Expanded(
//                                    // padding:  EdgeInsets.all(10),
//                                    // margin: EdgeInsets.all(20),
//                                     child: Row(
//
//                                       children: [
//                                         Expanded(
//
//                                             child: InkWell(
//                                               borderRadius: BorderRadius.circular(120),
//                                               onTap: (){
//                                                 Navigator.push(context, MaterialPageRoute(builder: (contex)=>Sebha()));
//                                               },
//                                               child: Container(
//                                                 height:110,width:80,
//                                                 decoration: BoxDecoration(
//                                                   borderRadius: BorderRadius.circular(30),
//                                                   color: Colors.brown.withOpacity(.5),
//
//                                                   // boxShadow: [
//                                                   //   BoxShadow(
//                                                   //     blurRadius: 30,
//                                                   //     offset: Offset(-28,-28),
//                                                   //     color: Colors.deepOrange,
//                                                   //   ),
//                                                   //   BoxShadow(
//                                                   //     blurRadius: 30,
//                                                   //     offset: Offset(10,10),
//                                                   //     color: Colors.deepOrangeAccent,
//                                                   //
//                                                   //   ),
//                                                   // ]
//                                                 ),
//                                                 child:Padding(
//                                                   padding: const EdgeInsets.all(5),
//                                                   child: Column(
//                                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                                     mainAxisAlignment: MainAxisAlignment.center,
//                                                     children: [
//                                                       Image.asset('images/sebha.png',width: 60,height: 60,),
//                                                       Center(
//                                                         child: Text('السبحه ',style: TextStyle(
//                                                             color: Colors.white,
//                                                             fontSize: 20,
//                                                             fontWeight: FontWeight.bold
//                                                         ),),
//                                                       )
//                                                     ],
//                                                   ),
//                                                 ) ,
//                                               ),
//                                             ),
//                                           ),
//
//                                         SizedBox(width: 10,),
//                                         Expanded(child:  Padding(
//                                             padding: const EdgeInsets.all(8.0),
//                                             child: InkWell(
//                                               borderRadius: BorderRadius.circular(30),
//                                               onTap: (){
//                                                 Navigator.push(context, MaterialPageRoute(builder: (contex)=>Azkar()));
//                                               },
//                                               child: Container(
//                                                 height: 110,width: 80,
//                                                 decoration: BoxDecoration(
//                                                   borderRadius: BorderRadius.circular(30),
//                                                   color: Colors.brown.withOpacity(.5),
//                                                   //
//                                                   // boxShadow: [
//                                                   //   BoxShadow(
//                                                   //     blurRadius: 30,
//                                                   //     offset: Offset(-28,-28),
//                                                   //     color: Colors.deepOrange,
//                                                   //   ),
//                                                   //   BoxShadow(
//                                                   //     blurRadius: 30,
//                                                   //     offset: Offset(10,10),
//                                                   //     color: Colors.deepOrangeAccent,
//                                                   //
//                                                   //   ),
//                                                   // ]
//                                                 ),
//                                                 child:Padding(
//                                                   padding: const EdgeInsets.all(5),
//                                                   child: Column(
//                                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                                     //  mainAxisAlignment: MainAxisAlignment.start,
//                                                     children: [
//                                                       Center(child: Image.asset('images/azkk.png',width: 60,height: 60,)),
//                                                       Center(
//                                                         child: Text('الاذكار  ',style: TextStyle(
//                                                             color: Colors.white,
//                                                             fontSize: 22,
//                                                             fontWeight: FontWeight.bold
//                                                         ),),
//                                                       )
//                                                     ],
//                                                   ),
//                                                 ) ,
//                                               ),
//                                             ),
//                                           ),),
//
//
//
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(height: 20,),
//
//                                 SingleChildScrollView(
//
//                                     child: Expanded(
//                                       child: Row(
//                                         children: [
//
//                                           Expanded(
//                                             child: InkWell(
//                                               borderRadius: BorderRadius.circular(30),
//                                               onTap: (){
//                                                 //  Navigator.push(context, MaterialPageRoute(builder: (contex)=>));
//                                               },
//                                               child: Expanded(
//                                                 child: Container(
//                                                   height: 110,width: 80,
//                                                   decoration: BoxDecoration(
//                                                     borderRadius: BorderRadius.circular(30),
//                                                     color: Colors.brown.withOpacity(.5),
//
//                                                     // boxShadow: [
//                                                     //   BoxShadow(
//                                                     //     blurRadius: 30,
//                                                     //     offset: Offset(-28,-28),
//                                                     //     color: Colors.deepOrange,
//                                                     //   ),
//                                                     //   BoxShadow(
//                                                     //     blurRadius: 30,
//                                                     //     offset: Offset(10,10),
//                                                     //     color: Colors.deepOrangeAccent,
//                                                     //
//                                                     //   ),
//                                                     // ]
//                                                   ),
//
//                                                     child: Column(
//                                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                                       mainAxisAlignment: MainAxisAlignment.center,
//                                                       children: [
//                                                         Image.asset('images/mohamed2.png',height: 50,width: 60,),
//
//                                                         Center(
//                                                           child: Text(' احاديث ',style: TextStyle(
//                                                               color: Colors.white,
//                                                               fontSize: 22,
//                                                               fontWeight: FontWeight.bold
//                                                           ),),
//                                                         )
//                                                       ],
//                                                     ),
//                                                   ) ,
//                                                 ),
//                                               ),
//                                             ),
//
//
//                                           SizedBox(width: 20,),
//                                        Expanded(child: InkWell(
//                                             borderRadius: BorderRadius.circular(30),
//
//                                             onTap: (){
//                                               Navigator.push(context, MaterialPageRoute(builder: (contex)=>Koraan()));
//                                             },
//                                             child: Container(
//                                               height: 110,width:80,
//                                               decoration: BoxDecoration(
//                                                 borderRadius: BorderRadius.circular(30),
//                                                 color: Colors.brown.withOpacity(.5),
//
//                                                 // boxShadow: [
//                                                 //   BoxShadow(
//                                                 //     blurRadius: 30,
//                                                 //     offset: Offset(-28,-28),
//                                                 //     color: Colors.deepOrange,
//                                                 //   ),
//                                                 //   BoxShadow(
//                                                 //     blurRadius: 30,
//                                                 //     offset: Offset(10,10),
//                                                 //     color: Colors.deepOrangeAccent,
//                                                 //
//                                                 //   ),
//                                                 // ]
//                                               ),
//
//                                                 child: Column(
//                                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                                   mainAxisAlignment: MainAxisAlignment.center,
//                                                   children: [
//                                                     Image.asset('images/mohamed.jpg',width:60,height: 60,),
//
//                                                     Center(
//                                                       child: Text('السيره النبويه ',style: TextStyle(
//                                                           color: Colors.white,
//                                                           fontSize: 22,
//                                                           fontWeight: FontWeight.bold
//                                                       ),),
//                                                     )
//
//                                                   ],
//                                                 ),
//                                               ) ,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),),
//
//
//                                 SizedBox(height: 20,),
//
//                                 SingleChildScrollView(
//                                   child: Expanded(
//                                     child: Row(
//                                       children: [
//
//                                         Expanded(
//                                           child: InkWell(
//                                             borderRadius: BorderRadius.circular(30),
//                                             onTap: (){
//                                               //  Navigator.push(context, MaterialPageRoute(builder: (contex)=>));
//                                             },
//                                             child: Expanded(
//                                               child: Container(
//                                                 height: 110,width: 80,
//                                                 decoration: BoxDecoration(
//                                                   borderRadius: BorderRadius.circular(30),
//                                                   color: Colors.brown.withOpacity(.5),
//
//                                                   // boxShadow: [
//                                                   //   BoxShadow(
//                                                   //     blurRadius: 30,
//                                                   //     offset: Offset(-28,-28),
//                                                   //     color: Colors.deepOrange,
//                                                   //   ),
//                                                   //   BoxShadow(
//                                                   //     blurRadius: 30,
//                                                   //     offset: Offset(10,10),
//                                                   //     color: Colors.deepOrangeAccent,
//                                                   //
//                                                   //   ),
//                                                   // ]
//                                                 ),
//
//                                                 child: Column(
//                                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                                   mainAxisAlignment: MainAxisAlignment.center,
//                                                   children: [
//                                                     Image.asset('images/salah.jpg',height: 60,width: 60,),
//
//                                                     Center(
//                                                       child: Text(' مواقيت الصلاه ',style: TextStyle(
//                                                           color: Colors.white,
//                                                           fontSize: 22,
//                                                           fontWeight: FontWeight.bold
//                                                       ),),
//                                                     )
//                                                   ],
//                                                 ),
//                                               ) ,
//                                             ),
//                                           ),
//                                         ),
//
//
//                                         SizedBox(width: 20,),
//                                         Expanded(child: InkWell(
//                                           borderRadius: BorderRadius.circular(30),
//
//                                           onTap: (){
//                                             Navigator.push(context, MaterialPageRoute(builder: (contex)=>Koraan()));
//                                           },
//                                           child: Container(
//                                             height: 110,width:80,
//                                             decoration: BoxDecoration(
//                                               borderRadius: BorderRadius.circular(30),
//                                               color: Colors.brown.withOpacity(.5),
//
//                                               // boxShadow: [
//                                               //   BoxShadow(
//                                               //     blurRadius: 30,
//                                               //     offset: Offset(-28,-28),
//                                               //     color: Colors.deepOrange,
//                                               //   ),
//                                               //   BoxShadow(
//                                               //     blurRadius: 30,
//                                               //     offset: Offset(10,10),
//                                               //     color: Colors.deepOrangeAccent,
//                                               //
//                                               //   ),
//                                               // ]
//                                             ),
//
//                                             child: Column(
//                                               crossAxisAlignment: CrossAxisAlignment.center,
//                                               mainAxisAlignment: MainAxisAlignment.center,
//                                               children: [
//                                                 Image.asset('images/mosabaka.jpg',width:60,height: 50,),
//
//                                                 Center(
//                                                   child: Text('مسابقات دينيه ',style: TextStyle(
//                                                       color: Colors.white,
//                                                       fontSize: 22,
//                                                       fontWeight: FontWeight.bold
//                                                   ),),
//                                                 )
//
//                                               ],
//                                             ),
//                                           ) ,
//                                         ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),),
//                                 SizedBox(height: 20,),
//
//
// SingleChildScrollView(
//                         child: Expanded(
//                               child: Row(
//                                 children: [
//
//                                   Expanded(
//                                     child: InkWell(
//                                       borderRadius: BorderRadius.circular(30),
//                                       onTap: (){
//                                         //  Navigator.push(context, MaterialPageRoute(builder: (contex)=>));
//                                       },
//                                       child: Expanded(
//                                         child: Container(
//                                           height: 110,width: 80,
//                                           decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.circular(30),
//                                             color: Colors.brown.withOpacity(.5),
//
//
//                                           ),
//
//                                           child: Column(
//                                             crossAxisAlignment: CrossAxisAlignment.center,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             children: [
//                                               Image.asset('images/s.png',height: 60,width: 60,),
//
//                                               Center(
//                                                 child: Text(' أدعيه الرسول ',style: TextStyle(
//                                                     color: Colors.white,
//                                                     fontSize: 22,
//                                                     fontWeight: FontWeight.bold
//                                                 ),),
//                                               )
//                                             ],
//                                           ),
//                                         ) ,
//                                       ),
//                                     ),
//                                   ),
//
//
//                                   SizedBox(width: 20,),
//                                   Expanded(child: InkWell(
//                                     borderRadius: BorderRadius.circular(30),
//
//                                     onTap: (){
//                                       Navigator.push(context, MaterialPageRoute(builder: (contex)=>Koraan()));
//                                     },
//                                     child: Container(
//                                       height: 110,width:80,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(30),
//                                         color: Colors.brown.withOpacity(.5),
//
//                                       ),
//
//                                       child: Column(
//                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                         mainAxisAlignment: MainAxisAlignment.center,
//                                         children: [
//                                           Image.asset('images/k.png',width:60,height: 60,),
//
//                                           Center(
//                                             child: Text('القرءان الكريم  ',style: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 22,
//                                                 fontWeight: FontWeight.bold
//                                             ),),
//                                           )
//
//                                         ],
//                                       ),
//                                     ) ,
//                                   ),
//                                   ),
//                                 ],
//                               ),
//                         ),),
//
//                               ],
//                         ),
//                            ),
//
//
//
//
//
//
//
//
//
//                     ],
//               ),
//             ),
//           ),
//         ),
//
//     ),
//
//
// ]
//
//
//         )
//
//
//
// );
//
//
//
//
//
//
//
//
//
//
//

// Image.asset('images/back3.jpeg'),
//                                                        Container(
//
//                                                          width:  double.infinity,
//                                                          height: MediaQuery.of(context).size.height*.1,
//                                                          child:    Card(
//                                                            child: Expanded(child: InkWell(
//                                                              borderRadius: BorderRadius.circular(30),
//
//                                                              onTap: (){
//                                                                Navigator.push(context, MaterialPageRoute(builder: (contex)=>SurElquraan()));
//                                                              },
//                                                              child: Container(
//                                                                height: 110,width:80,
//                                                                decoration: BoxDecoration(
//                                                                  borderRadius: BorderRadius.circular(30),
//                                                                  color: Colors.grey.withOpacity(.5),
//
//                                                                  // boxShadow: [
//                                                                  //   BoxShadow(
//                                                                  //     blurRadius: 30,
//                                                                  //     offset: Offset(-28,-28),
//                                                                  //     color: Colors.deepOrange,
//                                                                  //   ),
//                                                                  //   BoxShadow(
//                                                                  //     blurRadius: 30,
//                                                                  //     offset: Offset(10,10),
//                                                                  //     color: Colors.deepOrangeAccent,
//                                                                  //
//                                                                  //   ),
//                                                                  // ]
//                                                                ),
//
//                                                                child: Row(
//                                                                  crossAxisAlignment: CrossAxisAlignment.center,
//                                                                  mainAxisAlignment: MainAxisAlignment.center,
//                                                                  children: [
//                                                                    Image.asset('images/mosabaka.jpg',width:60,height: 50,),
// Spacer(),
//                                                                    Center(
//                                                                      child: Text('مسابقات دينيه ',style: TextStyle(
//                                                                          color: Colors.white,
//                                                                          fontSize: 22,
//                                                                          fontWeight: FontWeight.bold
//                                                                      ),),
//                                                                    )
//
//                                                                  ],
//                                                                ),
//                                                              ) ,
//                                                            ),
//                                                            ),
//                                                          ),
//                                                        ),
