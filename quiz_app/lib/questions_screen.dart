import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  @override
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);    // This is used to pass the selected answer to the parent widget
    setState(() {
      currentQuestionIndex++;
    });
  }

  
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,  // This is used to make the width of the column take the full width of the screen
      child: Container(
        margin: const EdgeInsets.all(40),   //  This is used to add padding to the container
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // This is used to center the text in the column
          crossAxisAlignment: CrossAxisAlignment.stretch, // This is used to stretch the text in the column
          children: [
            Text(
              currentQuestion.text, 
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 230, 200, 250),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers.map((answer) {
              return AnswerButton(
                onTap: () {
                  answerQuestion(answer);  // This is used to pass the selected answer to the parent widget
                }, 
                answerText: answer,
              );
            }),
          ],
        ),
      ),
    );
  }
}
