import 'package:e_commerce/features/checkout/data/models/doctors_model.dart';
import 'package:e_commerce/features/doctors/presentation/views/widgets/doctors_card.dart';
import 'package:e_commerce/features/doctors/services/get_all_doctors.dart';
import 'package:flutter/material.dart';

class ListViewDoctors extends StatelessWidget {
  const ListViewDoctors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DoctorsModel>>(
        future: AllDoctorsServices().getAllDoctors(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<DoctorsModel> doctors = snapshot.data!;
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: doctors.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    DoctorCard(
                      doctors: doctors[index],
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                );
              }),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
