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
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  CustomTextDiagnosis(
                      sufferFrom: 'IF you suffer from upper abdominal pain :- ',
                      analysis: 'Alkphos Alkaline Phosphatase. '),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      CustomAnalysisTextFormFeild(
                        data: "Age",
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      CustomAnalysisTextFormFeild(
                        data: "Gender",
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      CustomAnalysisTextFormFeild(
                        data: "AAP",
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
