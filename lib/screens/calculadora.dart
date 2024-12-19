import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'package:calculadora_bloc_practica/bloc/calculator/caculator_bloc.dart';
import 'package:calculadora_bloc_practica/widgets/widgets.dart';

class CalculadoraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final calculatorBloc = BlocProvider.of<CaculatorBloc>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(child: Container()),
                Results(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonNumber(
                        bgColor: const Color(0xFF88C2CE),
                        texto: 'AC',
                        onPressed: () => calculatorBloc.add(ResetACEvent())),
                    ButtonNumber(
                        bgColor: const Color(0xFF88C2CE),
                        texto: '+/-',
                        onPressed: () =>
                            calculatorBloc.add(ChangePositiveNegativeEvent())),
                    ButtonNumber(
                        bgColor: const Color(0xFF88C2CE),
                        texto: 'del',
                        onPressed: () => calculatorBloc.add(DeleteEvent())),
                    ButtonNumber(
                        bgColor: const Color(0xffF0A23B),
                        texto: '/',
                        onPressed: () =>
                            calculatorBloc.add(OperationEvent('/'))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonNumber(
                        bgColor: const Color(0xFF626461),
                        texto: '7',
                        onPressed: () =>
                            calculatorBloc.add(AddNumberEvent('7'))),
                    ButtonNumber(
                        bgColor: const Color(0xFF626461),
                        texto: '8',
                        onPressed: () =>
                            calculatorBloc.add(AddNumberEvent('8'))),
                    ButtonNumber(
                        bgColor: const Color(0xFF626461),
                        texto: '9',
                        onPressed: () =>
                            calculatorBloc.add(AddNumberEvent('9'))),
                    ButtonNumber(
                        bgColor: const Color(0xffF0A23B),
                        texto: 'x',
                        onPressed: () =>
                            calculatorBloc.add(OperationEvent('x'))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonNumber(
                        bgColor: const Color(0xFF626461),
                        texto: '4',
                        onPressed: () =>
                            calculatorBloc.add(AddNumberEvent('4'))),
                    ButtonNumber(
                        bgColor: const Color(0xFF626461),
                        texto: '5',
                        onPressed: () =>
                            calculatorBloc.add(AddNumberEvent('5'))),
                    ButtonNumber(
                        bgColor: const Color(0xFF626461),
                        texto: '6',
                        onPressed: () =>
                            calculatorBloc.add(AddNumberEvent('6'))),
                    ButtonNumber(
                        bgColor: const Color(0xffF0A23B),
                        texto: '-',
                        onPressed: () =>
                            calculatorBloc.add(OperationEvent('-'))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonNumber(
                        bgColor: const Color(0xFF626461),
                        texto: '1',
                        onPressed: () =>
                            calculatorBloc.add(AddNumberEvent('1'))),
                    ButtonNumber(
                        bgColor: const Color(0xFF626461),
                        texto: '2',
                        onPressed: () =>
                            calculatorBloc.add(AddNumberEvent('2'))),
                    ButtonNumber(
                        bgColor: const Color(0xFF626461),
                        texto: '3',
                        onPressed: () =>
                            calculatorBloc.add(AddNumberEvent('3'))),
                    ButtonNumber(
                        bgColor: const Color(0xffF0A23B),
                        texto: '+',
                        onPressed: () =>
                            calculatorBloc.add(OperationEvent('+'))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonNumber(
                        bgColor: const Color(0xFF626461),
                        texto: '0',
                        big: true,
                        onPressed: () =>
                            calculatorBloc.add(AddNumberEvent('0'))),
                    ButtonNumber(
                        bgColor: const Color(0xFF626461),
                        texto: '.',
                        onPressed: () =>
                            calculatorBloc.add(AddNumberEvent('.'))),
                    ButtonNumber(
                        bgColor: const Color(0xffF0A23B),
                        texto: '=',
                        onPressed: () =>
                            calculatorBloc.add(CalculateResultEvent())),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
