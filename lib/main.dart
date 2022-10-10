import 'package:flutter/material.dart';
import 'package:flutter_application_1/ques.dart';
import './question.dart';
import './answer.dart';
import 'apimanager.dart';

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

  final manager = ApiManager();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            leading: Icon(Icons.arrow_back),
            title: Text('quiz app'),
          ),
          body: FutureBuilder<List<ques>>(
            future: manager.getques(),
            builder: (context, AsyncSnapshot<List<ques>> snapshot) {
              if (snapshot.hasData) {
                List<ques> data = snapshot.data!;
                return Center(
                    child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(data[index].question),
                      subtitle: Text(data[index].correct_answer),
                      trailing: Text(data[index].incorrect_answers),
                      leading: ElevatedButton(
                        onPressed: _answerquestion,
                        child: Text("Next"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple, elevation: 5),
                      ),
                    );
                  },
                  itemCount: data.length,
                ));
              } else
                return Center(child: CircularProgressIndicator());
            },
          ),
        ));
  }
}
