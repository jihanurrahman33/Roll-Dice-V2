import 'package:flutter/material.dart';

class Custombtn extends StatelessWidget {
  final String btnName;
  final Color? bgColor;
  final TextStyle textStyle;
  final VoidCallback? callBack;

  const Custombtn(
      {super.key,
      required this.btnName,
      this.bgColor = Colors.black,
      required this.textStyle,
      required this.callBack});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
      ),
      onPressed: () {
        callBack!();
      },
      child: Text(
        btnName,
        style: textStyle,
      ),
    );
  }
}
