import 'package:e_commerce/features/home/presentation/views/widgets/advice_card.dart';
import 'package:flutter/material.dart';

class AdvicesListView extends StatelessWidget {
  const AdvicesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return const AdviceCard();
        }),
      ),
    );
  }
}
