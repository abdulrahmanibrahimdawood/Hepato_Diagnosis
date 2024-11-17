import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                'assets/two.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Text(
            'Fast and Reliable Results',
            style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Text(
              "We provide quick analysis with high accuracy, ensuring you get the information you need at the right time with minimal effort.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
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
