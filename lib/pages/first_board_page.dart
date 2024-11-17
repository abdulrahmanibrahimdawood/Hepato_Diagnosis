import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.3,
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to the HDx App',
                style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              // Text(
              //   'HDx App',
              //   style: TextStyle(
              //       fontSize: 32.sp,
              //       fontWeight: FontWeight.bold,
              //       color: kPrimaryColor),
              // ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Text(
              textAlign: TextAlign.center,
              "We help you monitor liver health with accurate and easy-to-use diagnostic tools,\n empowering you to understand your health condition and take appropriate steps.",
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
