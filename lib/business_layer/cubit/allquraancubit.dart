







import 'package:azkary/business_layer/states/quraan_state.dart';
import 'package:azkary/data_layer/quraan/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuraanCubit extends Cubit<QuraanState> {

//final  QuraanWebServices quraanWebServices;
final MyRepo myRepo;
// final   MyRepoHadith myRepoHadith;
 // QariRepositoer? qariRepositoer;
  QuraanCubit(this.myRepo) : super(Initialqstate());







 getAllQuraan() {
   myRepo.getAllQuraan().then((value) {
     //// print(value['text']);
     emit(AllQuraanState(value!!));
   });
 }


// getQari(){
//
//
//   qariRepositoer!.getQari().then((value) {
//     //// print(value['text']);
//     emit(Qarilist(value) );
//
//   });
//
//
// }

}


