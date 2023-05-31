import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/const/string.dart';
import 'package:quiz_app/data/question_list.dart';
import 'package:collection/collection.dart';
import 'package:quiz_app/gradient.dart';
import 'package:quiz_app/home_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.answer});

  final List<String> answer;

  // final List<String> resultList;

  @override
  Widget build(BuildContext context) {
    int right = 0;
    for (int i = 0; i < answer.length; i++) {
      if (answer[i] == questionList[i].answer[0]) {
        right++;
      }
    }

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: gradientDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 450,
              padding: const EdgeInsets.only(bottom: 30),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You answered $right out of ${questionList.length} correctly!',
                      style: GoogleFonts.lato(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ...answer.mapIndexed((i, e) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    width: 34,
                                    height: 34,
                                    margin: const EdgeInsets.only(right: 17),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: answer[i] ==
                                                questionList[i].answer[0]
                                            ? Colors.cyan
                                            : Colors.purpleAccent),
                                    child: Text(
                                      (i + 1).toString(),
                                      style:
                                          GoogleFonts.lato(color: Colors.white),
                                    )),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        questionList[i].question,
                                        style: GoogleFonts.lato(
                                            fontSize: 18, color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        answer[i],
                                        style: GoogleFonts.lato(
                                            fontSize: 15,
                                            color: Colors.pinkAccent),
                                      ),
                                      Text(
                                        questionList[i].answer[0],
                                        style: GoogleFonts.lato(
                                            fontSize: 15, color: Colors.cyan),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              label: const Text(Strings.restartQuiz),
              icon: const Icon(Icons.restart_alt_outlined),
            )
          ],
        ),
      ),
    );
  }
}
