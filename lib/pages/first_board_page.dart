import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/constant.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  static String id = kFirstPage;
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to the ',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text(
                'HDx App',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              textAlign: TextAlign.center,
              "We help you monitor liver health with accurate and easy-to-use diagnostic tools,\n empowering you to understand your health condition and take appropriate steps.",
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
