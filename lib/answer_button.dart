import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  final void Function() onTap;

  final String answerText;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(answerText,
            textAlign: TextAlign.center,
            softWrap: true,
            style: GoogleFonts.outfit(),
            maxLines: 2),
      ),
    );
  }
}
