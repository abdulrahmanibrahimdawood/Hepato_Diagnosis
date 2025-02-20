import 'package:e_commerce/features/checkout/data/models/advice_model.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/advice_card.dart';
import 'package:e_commerce/features/home/services/get_all_advices.dart';
import 'package:flutter/material.dart';

class AdvicesListView extends StatelessWidget {
  const AdvicesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320, // زيادة الارتفاع قليلاً
      child: FutureBuilder<List<AdviceModel>>(
        future: AllAdviceServices().getAllAdvices(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Error loading data."),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text("No advice available."),
            );
          }

          List<AdviceModel> advices = snapshot.data!;
          return ListView.builder(
            itemCount: advices.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return AdviceCard(
                advice: advices[index],
              );
            },
          );
        },
      ),
    );
  }
}
