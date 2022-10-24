



import 'dart:math';

import 'package:adhan_dart/adhan_dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Qbla extends StatefulWidget {
   Qbla({Key? key}) : super(key: key);

  @override
  State<Qbla> createState() => _QblaState();
}

class _QblaState extends State<Qbla> {
 // Qibla qibla=Qibla();
 //  late Stream<LocationData> locationdata;
 //  Location location=Location();
 //  @override
 //  void initState() {
 //    locationdata=location.onLocationChanged;
 //
 //    // double degree=Qbla.qibla(coordinates);
 //    super.initState();
 //
 //  }


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final height = constraints.maxHeight;
          final width = constraints.maxWidth;
          Coordinates coordinates = Coordinates(30.033333
          ,31.233334);

          double degree = Qibla.qibla(coordinates);
          // double compass = snapshot.data!.heading! * (pi / 180);
          //  double qibla = degree * (pi / 180);


          return Scaffold(
             // backgroundColor: Color(0xFF736AFF).withOpacity(.2),
              body: Column(
                  children: [
                    SizedBox(height: 50,),
                    Text("قبله الصلاه",
                        style: TextStyle(color: Colors.black, fontSize: 60)),
                    SizedBox(height: width,
                      width: width,
                      child: Center(
                        child: Stack(
                          children: [
                            Transform.rotate(

                                angle: degree * pi,
                                child: Image.asset(
                                  "images/qqq.png", width: double.infinity,
                                  height: double.infinity,)),

                            // Transform.rotate(
                            //
                            //         angle: degree*pi,
                            //  child:
                            //
                            //             Image.asset("images/download.png",color: Colors.black,width: 50,height: 50,),
                            //
                            //
                            //
                            //     ),
                          ],
                        ),
                      ),)
                  ]
              )
          );
        }
    );
  }




          }






