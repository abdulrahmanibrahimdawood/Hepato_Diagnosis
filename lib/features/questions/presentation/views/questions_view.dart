import 'package:e_commerce/core/widgets/app_bar_inside.dart';
import 'package:e_commerce/features/questions/presentation/views/widgets/question_list_view.dart';
import 'package:flutter/material.dart';

class QuesthionsPage extends StatelessWidget {
  const QuesthionsPage({super.key});
  static const routeName = 'questions';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBarInside(
              text1: "Questions List",
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: QuestionsListView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
