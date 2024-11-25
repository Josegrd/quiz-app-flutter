import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  Color isTrue(String answer, String correctAnswer) {
    if (answer == correctAnswer) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: isTrue(
                      data['user_answer'].toString(),
                      data['correct_answer'].toString(),
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'].toString(),
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const SizedBox(height: 5),
                        Text(data['correct_answer'].toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(173, 34, 236, 41)),
                            textAlign: TextAlign.left),
                        Text(
                          data['user_answer'].toString(),
                          style: TextStyle(
                            color: isTrue(
                              data['user_answer'].toString(),
                              data['correct_answer'].toString(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
