




import 'package:azkary/surah/repository_name.dart';
import 'package:azkary/surah/state_name.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class surahnamecubit extends Cubit<surahname> {

//final  QuraanWebServices quraanWebServices;
  final MyReponame myReponame;
 // final MyRepo myRepo;


  surahnamecubit(this.myReponame, ) : super(initialname());







  getAllQuraanname(){


    myReponame.getAllQuraan().then((value) {
      //// print(value['text']);


      emit(getsurahname(value!) );

    });





  }
  getAllQuraanaya(){


    myReponame.getAllAya().then((value) {
      //// print(value['text']);


      emit(getaya(value!) );

    });





  }

}


