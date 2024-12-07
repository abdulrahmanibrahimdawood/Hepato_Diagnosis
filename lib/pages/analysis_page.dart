import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/constant.dart';
import 'package:hepato_diagnosis/widget/Custom_analysis_text_form_feild.dart';
import 'package:hepato_diagnosis/widget/custom_app_bar.dart';
import 'package:hepato_diagnosis/widget/custom_text_diagnosis.dart';

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({super.key});

  static String id = kAnalysisPage;

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(
              text1: "Analysis",
            ),
            Column(
              children: [
                CustomTextDiagnosis(
                    sufferFrom: 'sufferFrom', analysis: 'analysis'),
                SizedBox(
                  height: 5,
                ),
                CustomAnalysisTextFormFeild(
                  data: "Age",
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
