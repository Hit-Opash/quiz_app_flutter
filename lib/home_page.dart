import 'package:flutter/material.dart';
import 'package:quiz_app/const/images.dart';
import 'package:quiz_app/gradient.dart';
import 'package:quiz_app/quiz_page.dart';
import 'package:quiz_app/const/string.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: gradientDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
              opacity: 0.5,
              child: Image.asset(
                ImageList.logo,
                cacheHeight: (width ~/ 1.5).toInt(),
                color: Colors.blueAccent.shade100,
              )),
          const SizedBox(
            height: 50,
          ),
          const Text(
            Strings.title,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const QuizPage()));
            },
            style: outlinedButtonStyle,
            label: const Text(
              Strings.startQuiz,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            icon: const Icon(Icons.play_arrow, color: Colors.white),
          )
        ],
      ),
    ));
  }
}

final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8))),
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24));
