import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/constant.dart';
import 'package:hepato_diagnosis/widget/custom_app_bar.dart';
import 'package:hepato_diagnosis/widget/custom_doctors_list.dart';
import 'package:hepato_diagnosis/widget/custom_search_text_form_feild.dart';

class DoctorsPage extends StatelessWidget {
  const DoctorsPage({super.key});
  static String id = kDoctorsPage;

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(
              text1: "Doctors List",
            ),
            CustomSearchTextFormFeild(),
            SizedBox(
              height: 20,
            ),
            CustomDoctorsListView(),
          ],
        ),
      ),
    );
  }
}
