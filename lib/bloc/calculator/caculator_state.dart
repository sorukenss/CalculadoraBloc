part of 'caculator_bloc.dart';

class CaculatorState {
  final String mathResult;
  final String firstNumber;
  final String secondNumber;
  final String operation;

  CaculatorState({
    this.mathResult = '0',
    this.firstNumber = '0',
    this.secondNumber = '0',
    this.operation = '',
  });

  CaculatorState copyWith({
    String? mathResult,
    String? firstNumber,
    String? secondNumber,
    String? operation,
  }) =>
      CaculatorState(
        mathResult: mathResult ?? this.mathResult,
        firstNumber: firstNumber ?? this.firstNumber,
        secondNumber: secondNumber ?? this.secondNumber,
        operation: operation ?? this.operation,
      );
}

class CalculatorCleanState extends CaculatorState {
  CalculatorCleanState()
      : super(
            mathResult: '0',
            firstNumber: '0',
            secondNumber: '0',
            operation: '+');
}
