import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_list.dart';
import 'package:quiz_app/gradient.dart';
import 'package:quiz_app/result_page.dart';
import 'answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizPage> {
  int questionIndex = 0;
  final List<String> userAnswer = [];

  void changeQuestion(String answer) {

      questionIndex++;

      if (questionIndex > questionList.length - 1) {
        userAnswer.add(answer);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => ResultPage(answer: userAnswer)));
      }else{
        setState(() {
          userAnswer.add(answer);
        });
      }
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: gradientDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(questionList[questionIndex].question,
                style: GoogleFonts.lato(fontSize: 22, color: Colors.white)),
            const SizedBox(height: 20),
            ...questionList[questionIndex]
                .getShuffleAnswer()
                .map((answer) => AnswerButton(
                    answer: answer,
                    onTap: () {
                      changeQuestion(answer);
                    }))
          ],
        ),
      ),
    ));
  }
}
