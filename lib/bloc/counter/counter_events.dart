
// abstract class do not directly initialise them.
// act base class , help to implement functionalty according to base class
// it define interface and behaviour for sub classes
import 'package:equatable/equatable.dart';

abstract class CounterEvent extends  Equatable {
  CounterEvent();

  @override
  List<Object> get props => [] ;
}

class IncrementCounter extends CounterEvent {

}

class DecrementCounter extends CounterEvent {

}


