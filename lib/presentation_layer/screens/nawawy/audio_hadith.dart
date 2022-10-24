//
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:my_project/presentation_layer/screens/nawawy/database.dart';
// import 'package:my_project/presentation_layer/screens/nawawy/hadith_model.dart';
//
// class AudioHadith extends StatefulWidget {
//   const AudioHadith({Key? key}) : super(key: key);
//
//   @override
//   State<AudioHadith> createState() => _AudioHadithState();
// }
//
// class _AudioHadithState extends State<AudioHadith> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(child: Stack(
//             children: [
//               SvgPicture.asset("images/background.svg"),
//               Column(
//                 children: [
//                   SizedBox(height: 50,),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Text(""),
//                       SvgPicture.asset("images/logo.svg"),
//                       //  SvgPicture.asset("images/logo.svg"),
//                       Icon(Icons.arrow_forward_ios_rounded),
//
//
//
//                     ],
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Text("الأربعون النوويه  ",style: TextStyle(fontSize: 18),),
//                       SizedBox(height: 10,),
//
//                       Text("لسماع الاحاديث",style: TextStyle(fontSize: 28,color: Colors.green),),
//
//                     ],
//                   )
//                 ],
//               )
//             ],
//           ),flex: 1,),
//           Expanded(child: Stack(
//             children: [
//               SvgPicture.asset("images/background.svg",width: double.infinity,fit: BoxFit.cover,),
//               FutureBuilder(builder: (ctx,snapshot){
//
//                 if(snapshot.hasData) {
//                   return GridView.builder(
//                       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                           maxCrossAxisExtent: 300,
//                           mainAxisSpacing: 20,
//                           crossAxisSpacing: 20
//                       ),
//                       itemCount: snapshot.data!.length,
//                       itemBuilder: (context, index) {
//                         HadithModel item = snapshot.data![index];
//                         return Aya(item.key, item.nameHadith);
//                       });
//                 }else{
//                   return Container();
//                 }
//
//
//               },future: Mydatabase.getAllHadith(),)
//
//             ],
//           ),flex: 3,),
//
//         ],
//       ),
//     );
//   }
//
//
//   Widget Aya(String key,name){
//
//
//     return Stack(
//       alignment: Alignment.center,
//       children: [
//         Image.asset("images/img.png"),
//         SvgPicture.asset("images/grey.svg"),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(key,style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
//             Text(name,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
//           ],
//         )
//       ],
//     );
//   }
// }
