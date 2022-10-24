




import 'package:azkary/presentation_layer/screens/nawawy/second_hadith.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeHadith extends StatefulWidget {
  const HomeHadith({Key? key}) : super(key: key);

  @override
  State<HomeHadith> createState() => _HomeHadithState();
}

class _HomeHadithState extends State<HomeHadith> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body:   Stack(
        children: [
          SvgPicture.asset("images/background.svg",width: double.infinity,fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 80,),
                SvgPicture.asset("images/logo.svg"),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("الأربعون النوويه  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green),),
                    SizedBox(height: 10,),

                    Text("لحفظ وسماع الأحاديث النوويه",style: TextStyle(fontSize: 28,color: Colors.green),),
                    SizedBox(height: 50,),
                    GestureDetector(
                      onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(_){
                        return SecondHadith();
                      })),
                      child: Card(child:Container(
                        height: 160,
                        color: Colors.deepOrange.withOpacity(.4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:[
                            Text("الاحاديث الأربعون",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                            Image.asset("images/quran.png"),
                          ]
                        ),
                      )),
                    ),
                    SizedBox(height: 20,),
                    //
                    // Card(child:Container(
                    //   decoration: BoxDecoration(
                    //     gradient: LinearGradient(
                    //       colors: [
                    //         Colors.orange.withOpacity(.9),
                    //         Colors.deepOrange.withOpacity(.6),
                    //         Colors.deepOrangeAccent.withOpacity(.6)
                    //       ]
                    //     )
                    //   )
                    //   ,child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //       children:[
                    //         Text("الاستماع للاحاديث",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    //         Image.asset("images/play.png"),
                    //       ]
                    //   ),
                    // )),
                    // SizedBox(height: 20,),

                    // Card(child:Container(
                    //     decoration: BoxDecoration(
                    //         gradient: LinearGradient(
                    //             colors: [
                    //               Colors.blueGrey.withOpacity(.5),
                    //               Colors.deepPurpleAccent.withOpacity(.5),
                    //               Colors.purpleAccent.withOpacity(.8)
                    //             ]
                    //         )
                    //     ),                    child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //       children:[
                    //         Text("الأحاديث المحفوظه",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    //         Image.asset("images/save-instagram.png"),
                    //       ]
                    //   ),
                    // )),


                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
