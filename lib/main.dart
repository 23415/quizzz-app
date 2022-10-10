import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionsIndex = 0;
  bool _haspressed = false;

  void _answerquestion() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionstext': 'what\s your favourite color?',
        'answer': ['black', 'blue', 'white', 'yellow'],
      },
      {
        'questionstext': 'what\s your favourite animal?',
        'answer': ['cat', 'dog', 'tiger', 'lion'],
      },
      {
        'questionstext': 'what\s your favourite food?',
        'answer': ['chicken', 'momos', 'burger', 'pizza'],
      },
      {
        'questionstext': 'what\s your favourite place?',
        'answer': ['delhi', 'mumbai', 'bangalore', 'chennai'],
      },
      {
        'questionstext': 'what\s your favourite actor?',
        'answer': ['salman khan', 'jr ntr', 'allu arjun', 'akshay kumar'],
      }
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: Icon(Icons.arrow_back),
          title: Text('quiz app'),
        ),
        body: Column(
          children: [
            Question(
              (_questions[_questionsIndex]['questionstext'] as String),
            ),
            ...(_questions[_questionsIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(answer);
            }).toList(),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: _answerquestion,
              child: Text("Next"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple, elevation: 5),
            )
          ],
        ),
      ),
    );
  }
}
