import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/constant.dart';
import 'package:hepato_diagnosis/widget/custom_app_bar.dart';
import 'package:hepato_diagnosis/widget/custom_questions_list.dart';

class QuesthionsPage extends StatelessWidget {
  const QuesthionsPage({super.key});
  static String id = kQuestionsPage;

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(
              text1: "Questions List",
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: CustomQuestionsListView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
