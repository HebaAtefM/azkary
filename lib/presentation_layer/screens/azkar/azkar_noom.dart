

import 'package:azkary/business_layer/cubit/quraan.dart';
import 'package:azkary/business_layer/states/q.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AzkarNoom extends StatefulWidget {
  const AzkarNoom({Key? key}) : super(key: key);

  @override
  State<AzkarNoom> createState() => _AzkarNoomState();
}

class _AzkarNoomState extends State<AzkarNoom> {


  List azkar= [
 "بِاسْمِكَ رَبِّـي وَضَعْـتُ جَنْـبي ، وَبِكَ أَرْفَعُـه، فَإِن أَمْسَـكْتَ نَفْسـي فارْحَـمْها ، وَإِنْ أَرْسَلْتَـها فاحْفَظْـها بِمـا تَحْفَـظُ بِه عِبـادَكَ الصّـالِحـين.",
 "اللّهُـمَّ إِنَّـكَ خَلَـقْتَ نَفْسـي وَأَنْـتَ تَوَفّـاهـا لَكَ ممَـاتـها وَمَحْـياها ، إِنْ أَحْيَيْـتَها فاحْفَظْـها ، وَإِنْ أَمَتَّـها فَاغْفِـرْ لَـها . اللّهُـمَّ إِنَّـي أَسْـأَلُـكَ العـافِـيَة.",
 "اللّهُـمَّ قِنـي عَذابَـكَ يَـوْمَ تَبْـعَثُ عِبـادَك.",
 "بِاسْـمِكَ اللّهُـمَّ أَمـوتُ وَأَحْـيا.",
 "الـحَمْدُ للهِ الَّذي أَطْـعَمَنا وَسَقـانا، وَكَفـانا، وَآوانا، فَكَـمْ مِمَّـنْ لا كـافِيَ لَـهُ وَلا مُـؤْوي.",
"اللّهُـمَّ عالِـمَ الغَـيبِ وَالشّـهادةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كُـلِّ شَـيءٍ وَمَليـكَه، أَشْهـدُ أَنْ لا إِلـهَ إِلاّ أَنْت، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي، وَمِن شَـرِّ الشَّيْـطانِ وَشِـرْكِه، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم .",
 "اللّهُـمَّ أَسْـلَمْتُ نَفْـسي إِلَـيْكَ، وَفَوَّضْـتُ أَمْـري إِلَـيْكَ، وَوَجَّـهْتُ وَجْـهي إِلَـيْكَ، وَأَلْـجَـاْتُ ظَهـري إِلَـيْكَ، رَغْبَـةً وَرَهْـبَةً إِلَـيْكَ، لا مَلْجَـأَ وَلا مَنْـجـا مِنْـكَ إِلاّ إِلَـيْكَ، آمَنْـتُ بِكِتـابِكَ الّـذي أَنْزَلْـتَ وَبِنَبِـيِّـكَ الّـذي أَرْسَلْـت.",
"سُبْحَانَ اللَّهِ.",
 "الْحَمْدُ لِلَّهِ.",
 "اللَّهُ أَكْبَرُ.",
  ];
  List count=[
    "1",
    "1",

    "3",
    "1",
"1",
"1",
"1",
    "33",
    "33",
    "34",




  ];


  // List description=[
  //   "",
  //   "",
  //   "",
  //   "",
  //   "",
  //   "عَشْر مَرّات بَعْدَ المَغْرِب وَالصّـبْح.",
  //   "بَعْد السّلامِ من صَلاةِ الفَجْر.",
  //   "بعد صلاة الصبح والمغرب.",
  //   "",
  //
  // ];



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>Sebhacubit(),

        child:  BlocBuilder<Sebhacubit,q>(

            builder: (context,state) {
              return
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Scaffold(
                      body:
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                           //  scrollDirection: Axis.horizontal,
                              itemCount: azkar.length,

                              itemBuilder: (context, index) {
                                return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20,),
                                      Container(
                                        width:MediaQuery.of(context).size.width*.9,
                                        height:MediaQuery.of(context).size.height*.5,
                                       // color: Colors.white.withOpacity(.2),
                                        decoration:BoxDecoration(
),



                                        child: Expanded(

                                            child: Card(
                                              color:     Color(0xFFF88158).withOpacity(.4),
                                              child: Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Center(child: Text(
                                                        "${azkar[index].toString()}",
                                                        style: TextStyle(fontSize: 20,
                                                            color: Colors.white,
                                                            fontWeight: FontWeight
                                                                .bold),),),
                                                      SizedBox(height: 35,
                                                        child: Text(
                                                          "[تكرر${count[index]}مرات]",
                                                          style: TextStyle(fontSize: 18,
                                                              color: Colors
                                                                  .black),),),
                                                      SizedBox(height: 10,),

                                                      // Row(
                                                      //   mainAxisAlignment: MainAxisAlignment
                                                      //       .center,
                                                      //   children: [
                                                      //
                                                      //     Container(
                                                      //       decoration: BoxDecoration(
                                                      //
                                                      //         //color: Color(0xFFDE3163).withOpacity(.4),
                                                      //
                                                      //
                                                      //
                                                      //         // borderRadius: BorderRadius
                                                      //         //     .circular(30)),
                                                      //       ),
                                                      //       width: 60,
                                                      //       height: 60,
                                                      //       child: FloatingActionButton(
                                                      //         elevation: 0,
                                                      //         backgroundColor:Color(0xFFDE3163).withOpacity(.4),
                                                      //
                                                      //
                                                      //         onPressed: () {
                                                      //           BlocProvider.of<
                                                      //               Sebhacubit>(
                                                      //               context)
                                                      //               .incrementa();
                                                      //           //   setState(() {
                                                      //           //     count[index];
                                                      //           //   });
                                                      //           // },
                                                      //         },
                                                      //         child: Container(
                                                      //           //  color: Colors.deepPurple.withOpacity(.3),
                                                      //           child: Text(BlocProvider
                                                      //               .of<Sebhacubit>(
                                                      //               context)
                                                      //               .counter1
                                                      //               .toString(),
                                                      //               style: TextStyle(
                                                      //                   fontSize: 30)),
                                                      //         ),
                                                      //       ),
                                                      //     ),
                                                      //     SizedBox(height: 20,),
                                                      //     Container(
                                                      //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                                                      //       width: 60,
                                                      //       height: 60,
                                                      //       // color: Colors.deepPurple.withOpacity(.1),
                                                      //
                                                      //       child: FloatingActionButton(
                                                      //
                                                      //         backgroundColor:Color(0xFF007BA7),
                                                      //
                                                      //         onPressed: () {
                                                      //           BlocProvider.of<
                                                      //               Sebhacubit>(
                                                      //               context).initiala();
                                                      //         },
                                                      //         child: Text("توقف ",
                                                      //           style: TextStyle(
                                                      //               color: Colors
                                                      //                   .white),),),
                                                      //     ),
                                                      //
                                                      //   ],
                                                      // ),
                                                      // Center(child: Text(
                                                      //   "${description[index]
                                                      //       .toString()}",
                                                      //   style: TextStyle(fontSize: 22,
                                                      //       color: Colors.white,fontWeight: FontWeight.bold),),),

                                                      //
                                                      // Row(
                                                      //   mainAxisAlignment: MainAxisAlignment
                                                      //       .spaceAround,
                                                      //   children: [
                                                      //
                                                      //     Container(
                                                      //       decoration: BoxDecoration(
                                                      //
                                                      //           color: Colors.deepPurple
                                                      //               .withOpacity(.3),
                                                      //
                                                      //
                                                      //
                                                      //           borderRadius: BorderRadius
                                                      //               .circular(120)),
                                                      //
                                                      //       width: 90,
                                                      //       height: 90,
                                                      //       child: FloatingActionButton(
                                                      //         elevation: 0,
                                                      //         backgroundColor: Colors
                                                      //             .deepPurple
                                                      //             .withOpacity(0),
                                                      //
                                                      //
                                                      //         onPressed: () {
                                                      //           BlocProvider.of<
                                                      //               Sebhacubit>(
                                                      //               context)
                                                      //               .incrementa();
                                                      //           //   setState(() {
                                                      //           //     count[index];
                                                      //           //   });
                                                      //           // },
                                                      //         },
                                                      //         child: Container(
                                                      //           //  color: Colors.deepPurple.withOpacity(.3),
                                                      //           child: Text(BlocProvider
                                                      //               .of<Sebhacubit>(
                                                      //               context)
                                                      //               .counter1
                                                      //               .toString(),
                                                      //               style: TextStyle(
                                                      //                   fontSize: 30)),
                                                      //         ),
                                                      //       ),
                                                      //     ),
                                                      //     // Container(
                                                      //     //
                                                      //     //   // width: 260,
                                                      //     //   height: 90,
                                                      //     //   // color: Colors.deepPurple.withOpacity(.1),
                                                      //     //
                                                      //     //   child: FloatingActionButton(
                                                      //     //
                                                      //     //     backgroundColor: Colors
                                                      //     //         .deepPurple
                                                      //     //         .withOpacity(.1),
                                                      //     //     onPressed: () {
                                                      //     //       BlocProvider.of<
                                                      //     //           Sebhacubit>(
                                                      //     //           context).initiala();
                                                      //     //     },
                                                      //     //     child: Text("توقف ",
                                                      //     //       style: TextStyle(
                                                      //     //           color: Colors
                                                      //     //               .white),),),
                                                      //     // ),
                                                      //
                                                      //   ],
                                                      // ),
                                                      //Image.asset("images/k.png",width: 30,)

                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )),
                                      ),



                                    ]
                                );
                              }),
                        ),
                      )


                );
            }
        )
    );
  }
}
