
import 'package:equatable/equatable.dart';

abstract class CounterState extends Equatable{
  final int counter;

const CounterState(this.counter);

 @override
  // TODO: implement props
  List<Object?> get props => [counter];
}

class StaticCounterState extends CounterState{
  const StaticCounterState(super.counter);
  @override
  // TODO: implement props
  List<Object?> get props => [counter];

}

class DynamicCounterState extends CounterState{
  const DynamicCounterState(super.counter);
  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}

