import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/constant.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});
  static String id = kThirdPage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/Ellipse.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/one.png',
              ),
            ],
          ),
          const Text(
            'Start Your Health Journey',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              textAlign: TextAlign.center,
              "Take a step towards a healthier life now and begin your journey with us to achieve a better, brighter health future.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(.3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
