import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/widget/Custom_body_question.dart';

class CustomQuestionsListView extends StatelessWidget {
  const CustomQuestionsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // إزالة Expanded لأنه غير ضروري هنا
      itemCount: 10,
      physics: const BouncingScrollPhysics(), // حركة تمرير ناعمة
      itemBuilder: ((context, index) {
        return const Column(
          children: [
            CustomBodyQuestion(), // سؤال مخصص
            SizedBox(
              height: 15, // مسافة بين الأسئلة
            ),
          ],
        );
      }),
    );
  }
}
