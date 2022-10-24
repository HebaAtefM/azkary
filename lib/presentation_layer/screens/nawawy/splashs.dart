import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';




class HadithSplash extends StatefulWidget {
  const HadithSplash({Key? key}) : super(key: key);

  @override
  State<HadithSplash> createState() => _HadithSplashState();
}


class _HadithSplashState extends State<HadithSplash> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 3),(_){

      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>HadithSplash()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.green,
    body:  Stack(
      alignment: Alignment.center,
        children: [
SvgPicture.asset("images/splash.svg",width: double.infinity,height: double.infinity,),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
SvgPicture.asset("images/islamic.svg"),
                SizedBox(height: 20,),
                Text("ألاربعون النوويه",style: TextStyle(fontSize: 28,color: Colors.white),)
              ],
            ),
          )

        ],
      )

    );
  }
}
