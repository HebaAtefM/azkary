

import 'package:azkary/business_layer/cubit/quraan.dart';
import 'package:azkary/business_layer/states/q.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Azkarsalah extends StatefulWidget {
  const Azkarsalah({Key? key}) : super(key: key);

  @override
  State<Azkarsalah> createState() => _AzkarsalahState();
}

class _AzkarsalahState extends State<Azkarsalah> {


  List azkar= [
 "أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله.اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام .",
 "لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد، وهوَ على كلّ شَيءٍ قَدير، اللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت، وَلا مُعْطِـيَ لِما مَنَـعْت، وَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد."
 "لا إلهَ إلاّ اللّه, وحدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمد، وهوَ على كلّ شيءٍ قدير، لا حَـوْلَ وَلا قـوَّةَ إِلاّ بِاللهِ، لا إلهَ إلاّ اللّـه، وَلا نَعْـبُـدُ إِلاّ إيّـاه, لَهُ النِّعْـمَةُ وَلَهُ الفَضْل وَلَهُ الثَّـناءُ الحَـسَن، لا إلهَ إلاّ اللّهُ مخْلِصـينَ لَـهُ الدِّينَ وَلَوْ كَـرِهَ الكـافِرون.",
"سُـبْحانَ اللهِ، والحَمْـدُ لله ، واللهُ أكْـبَر.",
 "لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمْد، وهُوَ على كُلّ شَيءٍ قَـدير.",
 "لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، يُحيـي وَيُمـيتُ وهُوَ على كُلّ شيءٍ قدير.",
 "اللّهُـمَّ إِنِّـي أَسْأَلُـكَ عِلْمـاً نافِعـاً وَرِزْقـاً طَيِّـباً ، وَعَمَـلاً مُتَقَـبَّلاً.",
 "اللَّهُمَّ أَجِرْنِي مِنْ النَّار.",
 "اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ.",

  ];
  List count=[
    "1",
    "1",

"33",
    "1",
    "10",
    "1",
    "7",
    "1",



  ];


List description=[
"",
"",
"",
"",
"",
"عَشْر مَرّات بَعْدَ المَغْرِب وَالصّـبْح.",
"بَعْد السّلامِ من صَلاةِ الفَجْر.",
"بعد صلاة الصبح والمغرب.",
"",

];



@override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       // Image.asset("images/etar.jpg"),
        BlocProvider(
            create: (context)=>Sebhacubit(),

            child:  BlocBuilder<Sebhacubit,q>(

                builder: (context,state) {
                  return
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Scaffold(
                          body: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              // decoration:BoxDecoration(
                              //
                              //     image:  DecorationImage(
                              //
                              //
                              //       image: AssetImage("images/sebhaaaa.jpeg",),),),
                                  child: ListView.builder(
                                // scrollDirection: Axis.horizontal,
                                  itemCount: azkar.length,

                                  itemBuilder: (context, index) {
                                    return Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                        //  SizedBox(height: 10,),
                                          Container(
                                            width:double.infinity,
                                            height:MediaQuery.of(context).size.height*.7,
                                            decoration:BoxDecoration(
                                              //
                                              // image:  DecorationImage(
                                              //
                                              //
                                              //   image: AssetImage("images/sebhaaaa.jpeg",),),
                                            ),
                                           // color: Colors.white.withOpacity(.2),


                                            child: Expanded(

                                                child: Center(
                                                  child: Card(


                                                    color:     Color(0xFFF88158).withOpacity(.4),
                                                    child: Expanded(
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(3.0),
                                                        child: Center(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Center(child: Text(
                                                                "${azkar[index].toString()}",
                                                                style: TextStyle(fontSize: 22,
                                                                    color: Colors.white,
                                                                    fontWeight: FontWeight
                                                                        .bold),),),
                                                              SizedBox(height: 25,
                                                                child: Center(
                                                                  child: Text(
                                                                    "[تكرر${count[index]}مرات]",
                                                                    style: TextStyle(fontSize: 18,
                                                                        color: Colors
                                                                            .black),),
                                                                ),),
                                                              SizedBox(height: 10,),
                                                              Center(child: Text(
                                                                "${description[index]
                                                                    .toString()}",
                                                                style: TextStyle(fontSize: 16,
                                                                    color: Colors.black,fontWeight: FontWeight.bold),),),
                                                              SizedBox(height: 10,),
                                                              //Image.asset("images/kk.jpg")

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
                                                              //     SizedBox(width: 20,),
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
                                                         //  Center( child: Image.asset("images/k.png",width: 40,))

                                                            ],
                                                          ),
                                                        ),
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
                      ),

                    );
                }
            )
        ),
      ],
    );
  }
}
