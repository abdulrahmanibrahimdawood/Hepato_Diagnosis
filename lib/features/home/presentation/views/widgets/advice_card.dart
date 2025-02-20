import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/features/checkout/data/models/advice_model.dart';
import 'package:flutter/material.dart';

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
                const SizedBox(height: 10),
                Image.network(
                  advice.image,
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Icon(
                    Icons.image_not_supported,
                    color: Colors.grey,
                    size: 100,
                  ),
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
