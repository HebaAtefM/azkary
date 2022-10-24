
import 'package:azkary/business_layer/states/q.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Sebhacubit extends Cubit<q> {
  int counter1=0;

  Sebhacubit():super(InitialState());


void initiala(){
  counter1=0;
  emit(InitialState());
}

void incrementa() {

  counter1++;

  emit(CounterValueChangedIncreamentState());

}}