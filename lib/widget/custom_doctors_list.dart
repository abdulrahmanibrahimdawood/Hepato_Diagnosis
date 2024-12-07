import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/widget/custom_body_doctor_card.dart';

class CustomDoctorsListView extends StatelessWidget {
  const CustomDoctorsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 10,
      physics: const BouncingScrollPhysics(),
      itemBuilder: ((context, index) {
        return const Column(
          children: [
            CustomBodyDoctorCard(),
            SizedBox(
              height: 15,
            )
          ],
        );
      }),
    );
  }
}
