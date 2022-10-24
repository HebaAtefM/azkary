

// import 'package:flutter/material.dart';
// import 'package:location/location.dart';
// import 'package:my_project/presentation_layer/screens/adhan/adhan_screen.dart';
// import 'package:my_project/presentation_layer/screens/adhan/qebla.dart';
//
// class Permision extends StatefulWidget {
//   const Permision({Key? key}) : super(key: key);
//
//   @override
//   State<Permision> createState() => _PermisionState();
// }
//
// class _PermisionState extends State<Permision> {
//   Location location=Location();
//   late bool _serviceEnabled;
//  late PermissionStatus permissionStatus;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     checkPermision();
//     super.initState();
//   }
//   Future<PermissionStatus?> checkPermision()async{
// permissionStatus= await   location.hasPermission();
// return permissionStatus;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// body:FutureBuilder<PermissionStatus?>(
//   future:checkPermision(),
//   builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//   if(snapshot.hasData){
// if(snapshot.data==PermissionStatus.granted){
//   return AdhanScreen();
// }else {
//   return Center(
//     child: ElevatedButton(onPressed: ()async
//
//     {
//
//       await location.requestPermission();
//       setState(() {
//
//       });
//       }, child: Text("Need permision")),
//   );
// }
//   }else{
//     return CircularProgressIndicator();
//   }
// },
// )
//     );
//   }
// }
