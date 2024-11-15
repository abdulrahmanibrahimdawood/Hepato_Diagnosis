import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/constant.dart';

class ScoundPage extends StatelessWidget {
  const ScoundPage({super.key});
  static String id = kScoundPage;
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
            'Fast and Reliable Results',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              textAlign: TextAlign.center,
              "We provide quick analysis with high accuracy, ensuring you get the information you need at the right time with minimal effort.",
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
