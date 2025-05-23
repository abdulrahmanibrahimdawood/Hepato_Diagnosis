import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liver_diagnosis/core/utils/app_color.dart';
import 'package:liver_diagnosis/core/widgets/custom_nav_bar.dart';

class CustomAppBarInside extends StatelessWidget {
  const CustomAppBarInside({
    super.key,
    required this.text1,
  });
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: const BoxDecoration(color: AppColor.kPrimaryColor),
        child: Center(
          child: Text(
            text1,
            style: TextStyle(
                fontSize: 19.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
      Positioned(
        top: 8.h,
        left: 0.w,
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, CustomNavBar.routeName);
          },
          icon: Icon(
            size: 20.sp,
            Icons.arrow_back_ios_new,
            // color: AppColor.kPrimaryColor,
            color: Colors.white,
          ),
        ),
      ),
    ]);
  }
}
