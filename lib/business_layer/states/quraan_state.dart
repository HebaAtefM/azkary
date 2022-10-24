


import 'package:azkary/quraan_api.dart';

abstract class QuraanState {}

class Initialqstate extends QuraanState{}
class AllQuraanState extends QuraanState{
  List<Surahs>  allquraanlist;


  AllQuraanState(this.allquraanlist  );


}
//
// class Qarilist extends QuraanState{
// List<Qari>    qarilist;
//
//
//   Qarilist(this.qarilist  );
//
//
// }








