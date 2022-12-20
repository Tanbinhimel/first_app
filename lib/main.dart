import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'black', 'score': 0},
        {'text': 'black', 'score': 1},
        {'text': 'black', 'score': 2},
        {'text': 'black', 'score': 3}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'rabbit', 'score': 0},
        {'text': 'rabbit', 'score': 1},
        {'text': 'rabbit', 'score': 2},
        {'text': 'rabbit', 'score': 3},
      ]
    },
    {
      'questionText': 'What\'s your favourite bird?',
      'answers': [
        {'text': 'rabbit', 'score': 0},
        {'text': 'rabbit', 'score': 1},
        {'text': 'rabbit', 'score': 2},
        {'text': 'rabbit', 'score': 3},
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex += 1;
    });
  }

  void _onPressedResetButton() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('My first app')),
            body: _questionIndex < questions.length
                ? Quiz(questions, _questionIndex, _answerQuestion)
                : Result(_totalScore, _onPressedResetButton)));
  }
}
