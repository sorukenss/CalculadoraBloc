part of 'caculator_bloc.dart';

@immutable
sealed class CaculatorEvent {}

class AddNumberEvent extends CaculatorEvent {
  final String number;
  AddNumberEvent(this.number);
}

class ResetACEvent extends CaculatorEvent {}

class ChangePositiveNegativeEvent extends CaculatorEvent {}

class DeleteEvent extends CaculatorEvent {}

class OperationEvent extends CaculatorEvent {
  final String operation;
  OperationEvent(this.operation);
}

class CalculateResultEvent extends CaculatorEvent {}
