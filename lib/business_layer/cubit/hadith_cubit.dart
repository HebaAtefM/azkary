
//
// import 'package:azkary/business_layer/states/hadith_state.dart';
// import 'package:azkary/data_layer/hadith/hadith_repository.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class HadithCubit extends Cubit<Hadith> {
//
// //final  QuraanWebServices quraanWebServices;
//   final MyRepoHadith myRepoHadith;
//
//   // QariRepositoer? qariRepositoer;
//   HadithCubit(this.myRepoHadith) : super(Hadithstate());
//
//
//   getallhadith() {
//     myRepoHadith.getHadith().then((value) {
//       emit(AllchaptersState(value!));
//     });
//   }
// }