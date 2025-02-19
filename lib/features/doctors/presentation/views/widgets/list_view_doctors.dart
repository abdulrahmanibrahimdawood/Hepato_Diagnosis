import 'package:e_commerce/features/doctors/presentation/views/widgets/doctors_card.dart';
import 'package:flutter/material.dart';

class ListViewDoctors extends StatelessWidget {
  const ListViewDoctors({
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
            DoctorCard(),
            SizedBox(
              height: 15,
            )
          ],
        );
      }),
    );
  }
}
