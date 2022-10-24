

import 'package:azkary/presentation_layer/screens/home_page.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      return Expanded(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepOrange.shade300,
                Colors.white,
                Colors.deepOrangeAccent.withOpacity(.8)
              ]
            )
          ),
          child: EasySplashScreen(

            logo: Image.asset('images/ko.png'),
            logoWidth:250,
  //  backgroundColor:Color.fromRGBO(154, 181, 208, 1),
           navigator :HomePage(),
            durationInSeconds:5,
            loadingText:Text('أذكاري',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.deepOrange),
    ),
          showLoader: true,
   
          ),
        ),
      );
  }
}



// import 'package:easy_splash_screen/easy_splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:my_project/presentation_layer/screens/home_page.dart';
// import 'package:my_project/presentation_layer/screens/on_boarding.dart';
//
//
// class Splash extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//   //   children:[
//   //
//   //
//   //           // OnBoarding( logo: Image.asset("images/splash.webp"),
//   //           //   durationInSeconds: 4,
//   //           //    backgroundColor: Colors.black,
//   //           //   navigator: HomePage(),
//   //
//   //
//   //   )
//   // //  title: Text('حصن المسلم',)
//
//
//
//
//         //   ]
//
//
//
//
//
//     );
//       //Stack(
//     //   children: [
//     // Container(
//     // decoration: BoxDecoration(
//     //
//     // image: DecorationImage(
//     //   fit: BoxFit.cover,
//     //   image: AssetImage('images/ssss.png',),
//     //
//     //
//     // ),
//     //
//     //
//     // ),
//     //
//     // //color: Colors.black12,
//     // width: double.infinity,
//     // height: double.infinity,
//     //
//     //
//     // ),
//
//   //   Expanded(
//   //   child: Container(
//   //
//   //    // width: double.infinity,
//   //     height:MediaQuery.of(context).size.height,
//   //     child: Expanded(
//   //       child: EasySplashScreen(
//   //
//   // //  Text("أذكاري",style: TextStyle(fontSize: 35,color: Colors.black),),
//   //
//   //
//   //
//   //       navigator: HomePage(),
//   //       logo: Image.asset(
//   //       "images/ssss.png",fit: BoxFit.cover,
//   //
//   //
//   //       ),
//   //       logoWidth: MediaQuery.of(context).size.width,
//   //         loadingText:Text('أذكاري',style: TextStyle(fontSize: 28,color: Colors.deepOrange),) ,
//   //       ),
//   //     ),
//   //   )
//   //
//   //
//   //   );
//   //
//
//
//
//
//
//
//
//   }
// }

