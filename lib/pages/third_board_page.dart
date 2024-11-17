import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                'assets/three.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Text(
            'Start Your Health Journey',
            style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Text(
              textAlign: TextAlign.center,
              "Take a step towards a healthier life now and begin your journey with us to achieve a better, brighter health future.",
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
