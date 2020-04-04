import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrian quizBrian = new QuizBrian();

class QuizzlerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: Text('Quizzler'),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Container> scoreKeeper = [];


  int currentQuesNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrian.getQuestionText(currentQuesNumber),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: RaisedButton(
              onPressed: () {
                bool correctAnswer = quizBrian.getQuestionAnswer(currentQuesNumber);
                setState(() {
                  if (currentQuesNumber < quizBrian.getAllNumberofQues() - 1) {
                    currentQuesNumber++;
                  }

                  if (correctAnswer == true) {
                    scoreKeeper.add(
                      Container(
                        margin: EdgeInsets.fromLTRB(1.0, 0.0, 1.0, 8.0),
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      ),
                    );
                  } else {
                    scoreKeeper.add(
                      Container(
                        margin: EdgeInsets.fromLTRB(1.0, 0.0, 1.0, 8.0),
                        child: Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      ),
                    );
                  }
                });
                print('true pressed');
              },
              color: Colors.green,
              textColor: Colors.white,
              child: Text(
                "TRUE",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: RaisedButton(
              onPressed: () {
                bool correctAnswer = quizBrian.getQuestionAnswer(currentQuesNumber);

                setState(() {
                  if (currentQuesNumber < quizBrian.getAllNumberofQues() - 1) {
                    currentQuesNumber++;
                  }
                  if (correctAnswer == false) {
                    scoreKeeper.add(
                      Container(
                        margin: EdgeInsets.fromLTRB(1.0, 0.0, 1.0, 8.0),
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      ),
                    );
                  } else {
                    scoreKeeper.add(
                      Container(
                        margin: EdgeInsets.fromLTRB(1.0, 0.0, 1.0, 8.0),
                        child: Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      ),
                    );
                  }
                });
                print('false pressed');
              },
              color: Colors.red,
              textColor: Colors.white,
              child: Text(
                "FALSE",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: scoreKeeper,
          ),
        ),
      ],
    );
  }
}
