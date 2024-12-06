import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/constant.dart';
import 'package:hepato_diagnosis/widget/custom_questions_list.dart';

class QuesthionsPage extends StatelessWidget {
  const QuesthionsPage({super.key});
  static String id = kQuestionsPage;

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: const Color(0xFF4781C0),
        //   title: const Center(
        //     child: Text(
        //       'Most famous questhions',
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 20,
        //       ),
        //     ),
        //   ),
        // ),
        body: CustomQuestionsListView(),
      ),
    );
  }
}
