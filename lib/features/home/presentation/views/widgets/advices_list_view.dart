import 'package:e_commerce/features/checkout/data/models/advice_model.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/advice_card.dart';
import 'package:e_commerce/features/home/services/get_all_advices.dart';
import 'package:flutter/material.dart';

class AdvicesListView extends StatelessWidget {
  const AdvicesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: FutureBuilder<List<AdviceModel>>(
          future: AllAdviceServices().getAllAdvices(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<AdviceModel> advices = snapshot.data!;
              return ListView.builder(
                itemCount: advices.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return AdviceCard(
                    advice: advices[index],
                  );
                }),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
