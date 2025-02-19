import 'package:e_commerce/core/widgets/app_bar_inside.dart';
import 'package:e_commerce/features/doctors/presentation/views/widgets/list_view_doctors.dart';
import 'package:e_commerce/features/doctors/presentation/views/widgets/text_form_feild_search.dart';
import 'package:flutter/material.dart';

class DoctorsView extends StatelessWidget {
  const DoctorsView({super.key});
  static const routeName = 'doctors';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBarInside(
              text1: "Doctors List",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: TextFormFeildSearch(),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: ListViewDoctors(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
