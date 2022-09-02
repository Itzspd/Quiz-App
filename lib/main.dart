import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _totalScore = 0;
  var _questionindex = 0;
  final _questions = const [
    {
      'questionText': 'What is your favorite book ?',
      'answer': [
        {'text': 'Harry Potter', 'score': 5},
        {'text': 'Rich Dad Poor Dad', 'score': 10},
        {'text': 'The Cunning', 'score': 1},
        {'text': 'Chemistry', 'score': 6},
      ],
    },
    {
      'questionText': 'How has swep been for you ?',
      'answer': [
        {'text': 'Educative', 'score': 10},
        {'text': 'Nice', 'score': 8},
        {'text': 'Good', 'score': 5},
        {'text': 'Bad', 'score': 1},
      ],
    },
    {
      'questionText': 'What is your favorite movie ?',
      'answer': [
        {'text': 'The Maze Runner', 'score': 8},
        {'text': 'Doctor Strnge', 'score': 9},
        {'text': 'Avengers Endgame', 'score': 10},
        {'text': 'Lion King', 'score': 5},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionindex += 1;
    });
    print(
      _questionindex,
    );
    print(
      'Your totla score is $_totalScore',
    );
  }

  void _restartQuiz() {
    setState(() {
      _questionindex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue[800],
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.lightBlue[800],
          title: const Text(
            'QUIZ APP',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: _questionindex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionindex,
              )
            : Results(_restartQuiz, _totalScore),
      ),
    );
  }
}
