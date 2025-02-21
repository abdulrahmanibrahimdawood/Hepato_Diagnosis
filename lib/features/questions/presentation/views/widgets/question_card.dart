import 'package:e_commerce/features/checkout/data/models/questions_model.dart';
import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  QuestionCard({
    required this.question,
    super.key,
  });
  QuestionModel question;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color.fromARGB(255, 189, 185, 185),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(11),
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              color: Color.fromARGB(255, 200, 199, 199),
              spreadRadius: 0,
              offset: Offset(-5, -5),
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                question.question,
                style: const TextStyle(
                    color: Color(0xFF4781C0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              question.answer,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
