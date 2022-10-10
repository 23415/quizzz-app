import 'package:flutter/material.dart';

class TextWid extends StatelessWidget {
  final String answertext;
  TextWid(
    this.answertext,
  );

  @override
  Widget build(BuildContext context) {
    return Text(answertext);
  }
}
