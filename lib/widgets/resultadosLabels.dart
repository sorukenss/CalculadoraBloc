import 'package:calculadora_bloc_practica/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/calculator/caculator_bloc.dart';

class Results extends StatelessWidget {
  const Results({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CaculatorBloc, CaculatorState>(
      builder: (context, state) {
        if (state.firstNumber == '0' && state.secondNumber == '0') {
          return ResultadoFinal(
              textoResultado: state.mathResult.endsWith('.0')
                  ? state.mathResult.substring(0, state.mathResult.length - 2)
                  : state.mathResult);
        }

        return Column(
          children: [
            SubResult(texto: state.firstNumber),
            SubResult(texto: state.operation),
            SubResult(
                texto: state.secondNumber.endsWith('.0')
                    ? state.secondNumber
                        .substring(0, state.secondNumber.length - 2)
                    : state.secondNumber),
            LineaSeparadora(),
            ResultadoFinal(
                textoResultado: state.mathResult.endsWith('.0')
                    ? state.mathResult.substring(0, state.mathResult.length - 2)
                    : state.mathResult),
            const SizedBox(
              height: 80,
            ),
            LineaSeparadora(),
          ],
        );
      },
    );
  }
}
