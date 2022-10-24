//
//
//
//
//
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:my_project/audioscreen.dart';
// import 'package:my_project/business_layer/cubit/allquraancubit.dart';
// import 'package:my_project/business_layer/states/quraan_state.dart';
// import 'package:my_project/quraan_api.dart';
//
// class Audio extends StatefulWidget {
// final List<Surahs>  qari;
//  const Audio({Key? key,required this.qari}) : super(key: key);
//
//   @override
//   State<Audio> createState() => _AudioState();
// }
//
// class _AudioState extends State<Audio> {
//
//
//   late AudioPlayer audioPlayer;
//   Duration duration = new Duration();
//   Duration position = new Duration();
//   //String path = "https://cdn.islamic.network/quran/audio/64/ar.alafasy/7.mp3";
//   bool isplaying = false;
//   bool isloop = false;
//   List<IconData> icons = [
//     Icons.play_circle_fill,
//     Icons.pause_circle_filled,
//   ];
//   List<Surahs>  qari;
//
//   _AudioState(this.qari);
//
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     this.widget.audioPlayer.onDurationChanged.listen((event) {
//       setState(() {
//         duration = event;
//       });
//     });
//     this.widget.audioPlayer.onPositionChanged.listen((p) {
//       setState(() {
//         position = p;
//       });
//     });
//     this.widget.audioPlayer.setSourceUrl(this.widget.audiopath);
//   }
//
//
//   Widget btnStart() {
//     return Center(
//       child: IconButton(
//           color: Colors.white,
//
//           onPressed: () {
//             if (isplaying == false) {
//               this.widget.audioPlayer.play(this.widget.audiopath);
//               setState(() {
//                 isplaying = true;
//               });
//             } else if (isplaying == true) {
//               this.widget.audioPlayer.pause();
//
//               setState(() {
//                 isplaying = false;
//               });
//             }
//           }
//           ,
//           icon: isplaying == false ? Icon(icons[0], size: 50,color: Colors.black,) : Icon(
//             icons[0], size: 50,color: Colors.black,)),
//     );
//   }
//
//
//   Widget loadAsset() {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           btnStart()
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       BlocBuilder<QuraanCubit, QuraanState>(builder: (context, state) {
//       if (state is AllQuraanState) {
//         qari = (state).allquraanlist!;
//               return ListView.builder(
//                 itemCount: qari.length,
//                 itemBuilder:(context,index){
//            return
//
//              GestureDetector(
//                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>AudioScreen(
//                  qari:widget.qari,
//                  index:index+1,
//                list surah,
//                )
//                )
//                );
//
//                child: Container(
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(position.toString().split(".")[0],
//                                 style: TextStyle(fontSize: 16,color: Colors.white),),
//                               Text(duration.toString().split(".")[0],
//                                   style: TextStyle(fontSize: 16,color: Colors.white))
//                             ],
//                           ),
//                           loadAsset(),
//                         ],
//                       )
//
//
//             ),
//              ),
//               ),
//              );
//           }
// }