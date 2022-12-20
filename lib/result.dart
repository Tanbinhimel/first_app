import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final VoidCallback _onPressedResetButton;

  const Result(this._totalScore, this._onPressedResetButton, {Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultText = 'your score: ';
    return '$resultText $_totalScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase),
          ElevatedButton(
              onPressed: _onPressedResetButton,
              child: const Text('Reset'))
        ],
      ),
    );
  }
}
