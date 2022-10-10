import 'package:flutter/material.dart';
import 'package:flutter_application_1/radio.dart';

class Answer extends StatefulWidget {
  final String answertext;
  Answer(
    this.answertext,
  );

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  String? answer;

  Widget build(BuildContext context) {
    return Container(
        width: 200,
        child: RadioListTile(
          title: TextWid(widget.answertext),
          value: widget.answertext,
          groupValue: answer,
          onChanged: ((value) {
            setState(() {
              answer = value.toString();
            });
          }),
        ));
  }
}
// TextButton(
//         child: Text(
//           answertext,
//           style: TextStyle(color:haspressed ?  Colors.deepPurple : Colors.black, fontSize: 20),
//         ),
//         onPressed: selector,
//       ),