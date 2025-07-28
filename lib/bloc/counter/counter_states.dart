import 'package:equatable/equatable.dart';

class CounterState extends Equatable{
  final int counter;

  CounterState({this.counter = 0});

  // copy with method help that class new instance create , to help to change counter value
  CounterState copyWith ({int? counter}){
    return CounterState(counter: counter ?? this.counter);
}
  @override
  List<Object?> get props => [counter];

}