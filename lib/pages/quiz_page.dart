import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _selectedIndex = 0;
  int _score = 0;

  final List<Color> _answerColor = [
    Colors.red,
    Colors.amber,
    Colors.blue.shade400,
    Colors.green.shade300
  ];

  final List<Map<String, Object>> _questions = [
    {
      "question": "What is my name?",
      "answers": [
        {"text": "Vandyck", "score": 100},
        {"text": "hi", "score": 0},
        {"text": "2", "score": 1},
        {"text": "I like tis", "score": 0},
      ]
    },
    {
      "question": "Where am i?",
      "answers": [
        {"text": "APU Campus", "score": 10},
        {"text": "At home", "score": 0},
        {"text": "B-04-05", "score": 1},
        {"text": "I like tis", "score": 0},
      ]
    },
    {
      "question": "What is my name?",
      "answers": [
        {"text": "Vandyck", "score": 100},
        {"text": "hi", "score": 0},
        {"text": "2", "score": 1},
        {"text": "I like tis", "score": 0},
      ]
    },
    {
      "question": "Where am i?",
      "answers": [
        {"text": "APU Campus", "score": 10},
        {"text": "At home", "score": 0},
        {"text": "B-04-05", "score": 1},
        {"text": "I like tis", "score": 0},
      ]
    }
  ];

  void _answerQuestion(int score) {
    setState(() {
      _selectedIndex++;
      _score += score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _selectedIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: (_selectedIndex < _questions.length)
          ? Column(children: [
              SizedBox(
                height: 50,
              ),
              Text(
                _questions[_selectedIndex]["question"] as String,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 20,
              ),
              ...(_questions[_selectedIndex]["answers"]
                      as List<Map<String, Object>>)
                  .map((answer) => Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  _answerColor[_selectedIndex]),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(10))),
                          onPressed: () =>
                              _answerQuestion(answer["score"] as int),
                          child: Text(answer["text"] as String),
                        ),
                      ))
            ])
          : Column(children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "You scored ${_score} out of ${_questions.length}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(10))),
                  onPressed: () => _resetQuiz(),
                  child: Text("Reset Quiz"),
                ),
              ),
            ]),
    );
  }
}
