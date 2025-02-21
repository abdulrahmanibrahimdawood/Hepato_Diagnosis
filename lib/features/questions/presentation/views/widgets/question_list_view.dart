import 'package:e_commerce/features/checkout/data/models/questions_model.dart';
import 'package:e_commerce/features/questions/presentation/views/widgets/question_card.dart';
import 'package:e_commerce/features/questions/services/get_all_questions.dart';
import 'package:flutter/material.dart';

class QuestionsListView extends StatelessWidget {
  const QuestionsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<QuestionModel>>(
        future: AllQuestionsServices().getAllQuestions(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Error loading data."),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text("No advice available."),
            );
          }

          List<QuestionModel> questions = snapshot.data!;
          return ListView.builder(
            itemCount: questions.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return QuestionCard(
                question: questions[index],
              );
            },
          );
        });
  }
}
