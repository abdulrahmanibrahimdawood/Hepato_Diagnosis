import 'package:e_commerce/features/questions/presentation/views/widgets/question_card.dart';
import 'package:flutter/material.dart';

class QuestionsListView extends StatelessWidget {
  const QuestionsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: const BouncingScrollPhysics(),
      itemBuilder: ((context, index) {
        return const Column(
          children: [
            QuestionCard(),
            SizedBox(
              height: 15,
            ),
          ],
        );
      }),
    );
  }
}
