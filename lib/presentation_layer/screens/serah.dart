



import 'package:azkary/business_layer/cubit/quraan.dart';
import 'package:azkary/business_layer/states/q.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';

class Sebha extends StatefulWidget {
  const Sebha({Key? key}) : super(key: key);

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  var selectedzekr;
List items=
  [
  'سبحان الله ',
  "الحمد لله ",
  "لا اله الا الله",
  "الله اكبر",
  "لا حول ولا قوه الا بالله",];
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery
        .of(context)
        .size;
    var _hijri = HijriCalendar.now();
    HijriCalendar.setLocal('ar');
    var day = DateTime.now();
    var format = DateFormat('EEE,d MMM yyyy');
    var formated = format.format(day);
    return BlocProvider(
        create: (context) => Sebhacubit(),
        child:

        BlocBuilder<Sebhacubit, q>(


            builder: (context, state) {
              return Scaffold(
                backgroundColor: Colors.greenAccent.withOpacity(.6),
                // appBar: AppBar(
                //   elevation: 0,
                //   backgroundColor: Colors.white54.withOpacity(.9),
                //     actions: [
                //
                //
                //       // color: Colors.deepPurple.withOpacity(.1),
                //
                //
                //      // Padding(
                //         //padding: const EdgeInsets.all(20.0),
                //        // FloatingActionButton(
                //        //
                //        //
                //        //      backgroundColor:  Colors.deepOrangeAccent.shade100
                //        //     ,
                //        //
                //        //      onPressed: () {
                //        //        BlocProvider.of<Sebhacubit>(
                //        //
                //        //            context).initiala();
                //        //      },
                //        //
                //        //      child: Icon(Icons.replay)),
                //
                //
                //
                //
                //     ]
                // ),

                body:Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/sebha.jpeg"),),
                  ),
                 // color: Colors.purple.withOpacity(.2),
                  width: MediaQuery.of(context).size.width,
                    height: double.infinity,
                    child:
                    InkWell(onTap:()=> BlocProvider.of<Sebhacubit>(

                    context).incrementa(),



            child:    Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                     //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       SizedBox(height: 60,),
                       Row(
                         children: [
                           InkWell(
                             onTap: ()=>   BlocProvider.of<Sebhacubit>(

                                 context).initiala(),
                             child: Container(
                               width: 90,
                               height: 100,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(30),
                                 color: Colors.white,

                               ),
                               child:
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 children: [
                                   FloatingActionButton(

                                     backgroundColor: Colors.white54,


                                     onPressed: () {
                                       BlocProvider.of<Sebhacubit>(

                                           context).initiala();
                                     },

                                     child:
                                     Icon(Icons.replay,color: Colors.black,),

                                   ),
                                   // Text("تصفير",style: TextStyle(fontSize: 18,color: Colors.black),)

                                 ],
                               ),











                             ),
                           ),
                           Container(
                             width: 300,
                             height: 100,
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
                             child: Center(
                               child: DropdownButton(

                                   borderRadius: BorderRadius.circular(10),

                                   // selectedItemBuilder:selectedzekr,

                                   iconSize: 30,

                                   // menuMaxHeight:500,


                                   icon:

                                   Icon(Icons.table_rows_sharp),


                                   // dropdownColor:Colors.deepPurple,


                                   style: TextStyle(color: Colors.black),

                                   alignment: Alignment.center,

                                   underline: Divider(height: 0,),

                                   elevation: 0,

                                   enableFeedback: false,

                                   // selectedItemBuilder: items[selectedzekr],

                                   items: ['سبحان الله ',

                                     "الحمد لله ",

                                     "لا اله الا الله",

                                     "الله اكبر",

                                     "لا حول ولا قوه الا بالله",
                                   ]
                                       .map((e) =>
                                       DropdownMenuItem(

                                         child: Column(

                                           children: [

                                             Text('$e', style: TextStyle(

                                                 fontSize: 26, color: Colors.black

                                             ),),

                                             Divider(height: 2,),

                                           ],

                                         ), value: e,)).toList(),

                                   onChanged: (val) {
                                     setState(() {
                                       selectedzekr = val;
                                     });
                                   },
                                   value: selectedzekr,

                                   hint: Expanded(

                                     child: Text(" سبحان الله وبحمده سبحان الله العظيم",
                                         textAlign: TextAlign.center,

                                         style: TextStyle(

                                             fontSize: 18,
                                             color: Colors.blueGrey,
                                             fontWeight: FontWeight.bold)),

                                   )


                               ),
                             ),
                           ),


                         ],
                       ),

                       SizedBox(height: 150,),

                       Container(
                         width: 200,
                         height: 100,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             color: Colors.white54
                         ),
                         child: InkWell(
                           onTap: ()=>     BlocProvider.of<Sebhacubit>(

                               context).incrementa(),


                           child:

                           Container(
                             child: FloatingActionButton(


                               elevation: 0,
                               backgroundColor: Colors.white.withOpacity(0),


                               onPressed: () {
                                 BlocProvider.of<Sebhacubit>(

                                     context).incrementa();
                               },


                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Container(

                                     child: Text(BlocProvider

                                         .of<Sebhacubit>(context)

                                         .counter1

                                         .toString(),

                                         style: TextStyle(
                                             fontSize: 30, color: Colors.black)),

                                   ),
                                   Text("عدد التسبيحات",style: TextStyle(color: Colors.black),)
                                 ],
                               ),

                             ),
                           ),


                           //SizedBox(height: 220,),


                         ),
                       ),
                       SizedBox(height: 20,),






                       //Text("سبحان الله وبحمده سبحان الله العظيم",style: TextStyle(fontSize: 24),),







                     ],
                   ),
            ),

                    )
                )
              );
            }
        )
    );
  }


  }




