import 'package:quiz_app/model/question.dart';

const questionList = [
  QuestionModel('What is Flutter?',
      [
        'Flutter is an open-source programming language for cross-platform applications',
        'Flutter is an open-source backend development framework',
        'Flutter is an open-source UI toolkit',
        'Flutters is a DBMS toolkit'
      ]),
  QuestionModel(
      'Which programming language is used to build Flutter applications?',
      [ 'Dart',
        'Kotlin',
        'Java',
        'Go']),
  QuestionModel('How many types of widgets are there in Flutter?',
      ['2',
        '4',
        '6',
        '10+']),
  QuestionModel(
      'What element is used as an identifier for components when programming in Flutter?',
      [ 'Keys',
        'Widgets',
        'Elements',
        'Serial']),
  QuestionModel(
      'What command would you use to compile your Flutter app in release mode?',
      [ 'Flutter run --release',
        'Flutter --release',
        'Flutter build --release',
        'Flutter run \$release'])
];