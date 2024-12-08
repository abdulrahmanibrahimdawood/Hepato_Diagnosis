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
                      sufferFrom: 'IF you suffer from upper abdominal pain :-',
                      analysis: 'Alkphos Alkaline Phosphatase. '),
                  SizedBox(
                    height: 15,
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
                  SizedBox(
                    height: 30,
                  ),
//==========================================================================================================
                  CustomTextDiagnosis(
                      sufferFrom:
                          'IF you suffer from anorexia, vomiting, fatigue :-',
                      analysis: 'AlT , AST. '),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      CustomAnalysisTextFormFeild(
                        data: "ALT",
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      CustomAnalysisTextFormFeild(
                        data: "AST",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
//==========================================================================================================
                  CustomTextDiagnosis(
                      sufferFrom: 'IF you suffer from jaundice :-',
                      analysis: 'Direct Bilirubin.'),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      CustomAnalysisTextFormFeild(
                        data: "DBIL",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
//==========================================================================================================
                  CustomTextDiagnosis(
                      sufferFrom: 'IF you suffer from edema lower limb :-',
                      analysis: 'Albumin.'),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      CustomAnalysisTextFormFeild(
                        data: "ALP",
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
