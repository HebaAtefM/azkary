





import 'package:flutter/material.dart';

class AllQuraan extends StatefulWidget {
  const AllQuraan({Key? key}) : super(key: key);

  @override
  State<AllQuraan> createState() => _QuraanScreenState();
}

class _QuraanScreenState extends State<AllQuraan> {
  //late List<Surah> quraansurah;

  @override
  void initState() {
    super.initState();
    //  BlocProvider.of<QuraanCubit>(context).getSurah()  ;

  }
//  AyaWebServices webServices=AyaWebServices();
  @override
  Widget build(BuildContext context) {

    return Directionality(textDirection:TextDirection.rtl ,
    child:



    DefaultTabController(

          length: 3,
          initialIndex: 0,

          child: SafeArea(
              child: Scaffold(

                  appBar: AppBar(
                    backgroundColor: Colors.grey.withOpacity(.2),
                    // title: Center(
                    //
                    //   child: Text("القرءان الكريم",style: TextStyle(fontSize: 28,color: Colors.white.withOpacity(.4),),   ),),

                        title:     Text('الُِقٌرٍآن الُِڪرٍيم',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),


                        actions: [   Center(child: Text('𝒜ℒ 𝒬𝒰ℛ𝒜𝒩',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)),]


                    ,
                    // bottom: TabBar(
                    //   splashBorderRadius: BorderRadius.circular(4),
                    //   tabs: [
                    //   Text('سوره',style: TextStyle(fontSize: 20,color: Colors.white30.withOpacity(.8)),),
                    //   Text('سجده',style: TextStyle(fontSize: 20,color: Colors.white30.withOpacity(.8)),),
                    //   Text('جزء',style: TextStyle(fontSize: 20,color: Colors.white30.withOpacity(.8)),),
                    //
                    // ],

                  //  ),
                  ),
                  body:
                  Stack(
                    children:[
                  Container(
                  decoration: BoxDecoration(

                  // image: DecorationImage(
                  //   fit: BoxFit.cover,
                  //   image: AssetImage('images/kkk.jpg',),
                  //
                  //
                  // ),


              ),

            //color: Colors.black12,
            width: double.infinity,
            height: double.infinity,


          ),
        Container(
          decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   // colors: [
            //   //   Colors.grey.withOpacity(.3),
            //   //   Colors.blueGrey.withOpacity(.3),
            //   //   Colors.brown.withOpacity(.5)
            //   // ]
            // )
          ),
          child: TabBarView(children: <Widget>[
          //  Juz(),

            // SurElquraan(),
            //
            // Sajda(),




          ],
          ),
        )
]
    ),
        ))
                  )
    );
                }
                      }





