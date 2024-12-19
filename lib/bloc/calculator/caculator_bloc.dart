import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'caculator_event.dart';
part 'caculator_state.dart';

class CaculatorBloc extends Bloc<CaculatorEvent, CaculatorState> {
  CaculatorBloc() : super(CaculatorState()) {
    on<ResetACEvent>((event, emit) => emit(CalculatorCleanState()));

    on<AddNumberEvent>((event, emit) {
      if (event.number == '.') {
        if (state.mathResult.contains('.')) {
          return;
        }
        if (state.mathResult == '0') {
          return emit(
              state.copyWith(mathResult: state.mathResult + event.number));
        }
      }
      if (state.mathResult == '0') {
        return emit(state.copyWith(mathResult: event.number));
      }
      return emit(state.copyWith(mathResult: state.mathResult + event.number));
    });

    on<ChangePositiveNegativeEvent>((event, emit) => emit(state.copyWith(
        mathResult: state.mathResult.contains('-')
            ? state.mathResult.replaceFirst('-', '')
            : '-' + state.mathResult)));

    on<DeleteEvent>((event, emit) {
      if (state.mathResult.startsWith('-') && state.mathResult.length == 2) {
        return emit(state.copyWith(mathResult: '0'));
      } else {
        return emit(state.copyWith(
          mathResult: state.mathResult.length > 1
              ? state.mathResult.substring(0, state.mathResult.length - 1)
              : '0',
        ));
      }
    });

    on<OperationEvent>((event, emit) {
      return emit(state.copyWith(
          firstNumber: state.mathResult,
          mathResult: '0',
          operation: event.operation,
          secondNumber: '0'));
    });

    on<CalculateResultEvent>((event, emit) {
      final double num1 = double.parse(state.firstNumber);
      final double num2 = double.parse(state.mathResult);

      switch (state.operation) {
        case '+':
          return emit(state.copyWith(
              secondNumber: state.mathResult, mathResult: '${num1 + num2}'));
        case '-':
          return emit(state.copyWith(
              secondNumber: state.mathResult, mathResult: '${num1 - num2}'));
        case 'x':
          return emit(state.copyWith(
              secondNumber: state.mathResult, mathResult: '${num1 * num2}'));
        case '/':
          return emit(state.copyWith(
              secondNumber: state.mathResult, mathResult: '${num1 / num2}'));
        default:
          return emit(state);
      }
    });
  }
}
