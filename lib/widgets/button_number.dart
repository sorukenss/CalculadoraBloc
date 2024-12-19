import 'package:flutter/material.dart';

class ButtonNumber extends StatelessWidget {
  final Color bgColor;
  final String texto;
  final bool big;

  final Function onPressed;

  const ButtonNumber(
      {super.key,
      required this.bgColor,
      required this.texto,
      this.big = false,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final buttonStyle = TextButton.styleFrom(
      backgroundColor: bgColor,
      foregroundColor: Colors.white,
      shape: const StadiumBorder(),
    );

    return Container(
      margin: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
      child: TextButton(
        style: buttonStyle,
        onPressed: () => onPressed(),
        child: SizedBox(
          width: big ? 160 : 63,
          height: 65,
          child: Center(
            child: Text(
              texto,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
