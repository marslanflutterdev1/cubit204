import 'package:bloc/bloc.dart';
import 'package:cubit204/counter/counter_state.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit(): super( const StaticCounterState(0));

  incrementFun(){
    emit(DynamicCounterState(state.counter + 1));
  }

  decrementFun(){
    emit(DynamicCounterState(state.counter - 1));
  }

}