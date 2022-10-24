

import 'package:audioplayers/audioplayers.dart';
import 'package:azkary/business_layer/cubit/allquraancubit.dart';
import 'package:azkary/business_layer/states/quraan_state.dart';
import 'package:azkary/presentation_layer/screens/tab_bar/allsur.dart';
import 'package:azkary/quraan_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SurElquraan extends StatefulWidget {
  const SurElquraan({Key? key}) : super(key: key);

  @override
  State<SurElquraan> createState() => _SurElquraanState();
}

class _SurElquraanState extends State<SurElquraan> {
  List<Surahs> allquraanname = [];
  List<Ayahs> surah = [];

  final controller = ScrollController();
  int index = 0;
  AudioPlayer audioplayer=AudioPlayer();



  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child:
      Scaffold(
      //  backgroundColor: Color(0xFFC48793		),
appBar: AppBar(
  backgroundColor: Colors.white,
leading: InkWell(
    onTap: ()=>Navigator.pop(context),
    child: Icon(Icons.exit_to_app,color: Colors.black,)),

elevation: 0,

title: Text("Quran ",style: TextStyle(fontSize: 28,color: Color(0xFFC68E17	),fontWeight: FontWeight.bold),),
  actions: [
    Image.asset("images/k.png")
  ],

),
        

        body:  Stack(children: [
         // Image.asset("images/stac.jpg",),

          //  Image.asset("images/moshaf.png",width: MediaQuery.of(context).size.width,height: 100,),



      //       Container(
      //   decoration: BoxDecoration(
      //     // image: DecorationImage(
      //     //   fit: BoxFit.fill,
      //     //   image: AssetImage(
      //     //     'images/q.jpg',
      //     //   ),
      //     // ),
      //     color: Colors.white,
      //
      //   ),
      //
      //   //color: Colors.black12,
      //   width: double.infinity,
      //   height: double.infinity,
      // ),


            BlocBuilder<QuraanCubit, QuraanState>(builder: (context, state) {
              if (state is AllQuraanState) {
                allquraanname = (state).allquraanlist;
                return SingleChildScrollView(child: Container(
                    decoration:     BoxDecoration(
                      borderRadius: BorderRadius.circular(200)
                    ),
                      padding: EdgeInsets.all(8),
                      child: Expanded(
                          child: ListView.builder(
                              controller: controller,
                              shrinkWrap: true,
                              padding: EdgeInsets.all(8),
                              itemCount: allquraanname.length,
                              itemBuilder: (context, index) {
                                return  Expanded(child:Column(children: [
                                  InkWell(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => AllSur(
                                                  inte: index,
                                              sur:allquraanname,
                                              audioPlayer: audioplayer,
                                                ))),
                                    child: Expanded(
                                      child: Card(
                                        color: Color(0xFFC68E17).withOpacity(.2),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width:
                                                  MediaQuery.of(context).size.width * .9,
                                              height:
                                                  MediaQuery.of(context).size.height * .1,
                                              child: Row(
                                                children: [
                                                  //Text(Surahs[index].number, style: TextStyle(fontSize: 28),),


                                                  Text(
                                                    allquraanname[index].name.toString(),
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.black),
                                                  ),
                                                  Spacer(),

                                                  Column(
                                                    children: [
                                                      Text(
                                                        allquraanname[index]
                                                            .englishName
                                                            .toString(),
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.black),
                                                      ),
                                                      Text(
                                                        allquraanname[index]
                                                            .revelationType
                                                            .toString(),
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.black),
                                                      ),
                                                      // Image.asset(
                                                      //
                                                      //      "images/makkah.png",width: 20
                                                      //   ,
                                                      // ),

                                                    ],
                                                  ),
                                                  Container(

                                                    decoration:BoxDecoration(


                                                        color:Color(0xFFC68E17).withOpacity(.9),



                                                        borderRadius: BorderRadius.circular(100)
                                                    ),
                                                    width:40,
                                                    height:100,
                                                    alignment: Alignment.center



                                                    , child: Expanded(
                                                    child: Text(
                                                      allquraanname[index]
                                                          .number
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  ),

                                                ],
                                              )),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 2,
                                  )



                                ])
                                );
                              }))
                )
                );
              } else {
                return CircularProgressIndicator();
              }
            }),
          ],
        ),
      )


    );
  }
}
