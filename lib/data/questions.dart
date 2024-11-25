import 'package:adv_basics/models/quiz_question.dart';

const questions = [
  QuizQuestion('What are the main building blocks of Flutter UIs?', [
    'Widgets',
    'Components',
    'Blocks',
    'Functions',
  ]),
  QuizQuestion('What\'s the purpose of a StatefulWidget?', [
    'Update the data model',
    'Build a new widget on every build',
    'Listen to changes in state',
    'Rebuild UI when state changes',
  ]),
  QuizQuestion(
      'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
      [
        'StatelessWidget',
        'StatefulWidget',
        'Both are equally good',
        'None of the above',
      ]),
  QuizQuestion(
    'How can you tell if a widget is a StatelessWidget or StatefulWidget?',
    [
      'By looking at the class',
      'By looking at the widget tree',
      'By looking at the widget properties',
      'None of the above',
    ],
  )
];
