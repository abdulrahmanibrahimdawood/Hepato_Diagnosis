import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/constant.dart';
import 'package:hepato_diagnosis/widget/custom_doctors_list.dart';
import 'package:hepato_diagnosis/widget/custom_search_text_form_feild.dart';

class DoctorsPage extends StatelessWidget {
  const DoctorsPage({super.key});
  static String id = kDoctorsPage;

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: const Color(0xFF4781C0),
        //   title: const Center(
        //     child: Text(
        //       'Doctors',
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 20,
        //       ),
        //     ),
        //   ),
        // ),
        body: Column(
          children: [
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
