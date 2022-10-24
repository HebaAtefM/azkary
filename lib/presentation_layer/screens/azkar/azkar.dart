

import 'package:azkary/presentation_layer/screens/azkar/azkar_aftersalah.dart';
import 'package:azkary/presentation_layer/screens/azkar/azkar_est.dart';
import 'package:azkary/presentation_layer/screens/azkar/azkar_masaa.dart';
import 'package:azkary/presentation_layer/screens/azkar/azkar_noom.dart';
import 'package:azkary/presentation_layer/screens/azkar/azkar_sabah.dart';
import 'package:azkary/presentation_layer/screens/azkar/doaa.dart';
import 'package:azkary/presentation_layer/screens/azkar/doaa_alnaby.dart';
import 'package:flutter/material.dart';

class Azkar extends StatelessWidget {
  const Azkar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(

      textDirection: TextDirection.rtl,
      child: Scaffold(

        backgroundColor: Colors.white,

//appBar: AppBar(title:             Image.asset("images/gg.jpg",fit:BoxFit.cover,width: 600,height: 600,),),

    body: Stack(
          children: [
        //   Image.asset("images/stac.jpg",height: 140,width: double.infinity,),

            Image.asset("images/gg.jpg",fit:BoxFit.cover,width: MediaQuery.of(context).size.width,height: 130,),

            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    SizedBox(height: 80,),

                    InkWell(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>AzkarSabah())),
                      child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),

                 border: Border.all(color: Colors.white),
                        color: Colors.green.withOpacity(.7)
                      ),
                      child:
                         // Image.asset('images/clears.png'),
                          Center(child: Text('أذكار الصباح' ,style: TextStyle(fontSize: 30,color: Colors.white,),)),

                      )),

                    SizedBox(height: 30,),
                    InkWell(

                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>AzkarMasaa())),

                      child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white),
                          color: Colors.blueGrey
                      ),
                      child:


                         // Image.asset('images/clears.png'),

                          Center(child: Text('أذكارالمساء' ,style: TextStyle(fontSize: 30,color: Colors.white,),)),

                      )),

                    SizedBox(height: 30,),

                    InkWell(

                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>Azkarsalah())),

                      child: Container(
                      width: 500,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white),
                          color: Colors.deepPurple.withOpacity(.5)
                      ),
                      child: Center(child: Text('أذكار بعد السلام من الصلاة ' ,style: TextStyle(fontSize: 20,color: Colors.white,),)),
                    ),),
                    SizedBox(height: 30,),

                    InkWell(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>AzkarNoom())),

                      child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white),
                          color: Colors.deepOrange.withOpacity(.4)
                      ),
                      child: Center(child: Text('أذكار النوم' ,style: TextStyle(fontSize: 30,color: Colors.white,),)),
                    ),),
                    SizedBox(height: 30,),

                    InkWell(

                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>AzkarEst())),

                      child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white),
                          color: Colors.redAccent.withOpacity(.3)
                      ),
                      child: Center(child: Text('أذكار الاستيقاظ' ,style: TextStyle(fontSize: 30,color: Colors.white,),)),
                    ),),
                    SizedBox(height: 30,),

                    InkWell(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>Doaa())),


                      child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white),
                          color: Colors.blue.withOpacity(.5)
                      ),
                      child: Center(child: Text('أدعيه قرأنيه' ,style: TextStyle(fontSize: 30,color: Colors.white,),)),
                    ),),
                    SizedBox(height: 30,),

                    InkWell(

                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>DoaaA())),

                      child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white),
                          color: Colors.blueGrey
                      ),
                      child: Center(child: Text('أدعيه الانبياء  ' ,style: TextStyle(fontSize: 30,color: Colors.white,),)),
                    ),),



                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
