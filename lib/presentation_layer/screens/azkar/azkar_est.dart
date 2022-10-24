

import 'package:azkary/business_layer/cubit/quraan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_layer/states/q.dart';

class AzkarEst extends StatefulWidget {
  const AzkarEst({Key? key}) : super(key: key);

  @override
  State<AzkarEst> createState() => _AzkarEstState();
}

class _AzkarEstState extends State<AzkarEst> {


  List azkar= [
  "الحَمْـدُ لِلّهِ الّذي أَحْـيانا بَعْـدَ ما أَماتَـنا وَإليه النُّـشور.",
 "الحمدُ للهِ الذي عافاني في جَسَدي وَرَدّ عَليّ روحي وَأَذِنَ لي بِذِكْرِه.",
 "لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شَـريكَ له، لهُ المُلـكُ ولهُ الحَمـد، وهوَ على كلّ شيءٍ قدير، سُـبْحانَ اللهِ، والحمْـدُ لله ، ولا إلهَ إلاّ اللهُ واللهُ أكبَر، وَلا حَولَ وَلا قوّة إلاّ باللّهِ العليّ العظيم. رَبِّ اغْفرْ لي.",


  ];
  List count=[
    "1",
    "1",
    "1",




  ];






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
                      body: Padding(
                        padding: const EdgeInsets.all(10),
                        child: ListView.builder(
                           //scrollDirection: Axis.horizontal,
                            itemCount: azkar.length,

                            itemBuilder: (context, index) {
                              return Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 20,),
                                    Container(
                                      width:MediaQuery.of(context).size.width,
                                      height:MediaQuery.of(context).size.height*.5,
                                      decoration:BoxDecoration(

                                        ),


                                      child: Expanded(

                                          child: Card(
                                            color:     Color(0xFFF88158).withOpacity(.4),

                                        //    color: Color(0xFF99BADD),
                                            child: Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Center(child: Text(
                                                      "${azkar[index].toString()}",
                                                      style: TextStyle(fontSize: 22,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight
                                                              .bold),),),
                                                    SizedBox(height: 35,
                                                      child: Text(
                                                        "[تكرر${count[index]}مرات]",
                                                        style: TextStyle(fontSize: 18,
                                                            color: Colors
                                                                .blueGrey),),),

                                                    SizedBox(height: 30,),
                                                 //   Image.asset("images/kk.jpg")

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
                                                    //       height: 90,
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
                                                    //       height: 90,
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
                                                  //  Image.asset("images/k.png",width: 30,)

                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                    ),



                                  ]
                              );
                            }),
                      )
                  ),

                );
            }
        )
    );
  }
}
