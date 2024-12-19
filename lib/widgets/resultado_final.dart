import 'package:flutter/material.dart';

class ResultadoFinal extends StatelessWidget {
  final String textoResultado;

  const ResultadoFinal({super.key, required this.textoResultado});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Text(
        textoResultado,
        style: const TextStyle(
          fontSize: 40,
        ),
      ),
    );
  }
}
