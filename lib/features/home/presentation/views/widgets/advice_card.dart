import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/features/checkout/data/models/advice_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AdviceCard extends StatelessWidget {
  AdviceCard({
    required this.advice,
    super.key,
  });
  AdviceModel advice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
          height: 300,
          decoration: BoxDecoration(
            color: AppColor.kPrimaryColor.withValues(alpha: .5),
            borderRadius: BorderRadius.circular(10),
          ),
          width: MediaQuery.of(context).size.width * 0.85,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text(
                  advice.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Image.asset(
                  'assets/images/dvice_photo.png',
                  height: 200,
                  width: 100,
                ),
                Text(
                  advice.description,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          )),
    );
  }
}
//
