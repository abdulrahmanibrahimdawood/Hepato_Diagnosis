import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/widget/Custom_body_question.dart';

class CustomQuestionsListView extends StatelessWidget {
  const CustomQuestionsListView({
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
            CustomBodyQuestion(),
            SizedBox(
              height: 15,
            ),
          ],
        );
      }),
    );
  }
}
