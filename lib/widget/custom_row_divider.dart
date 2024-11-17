import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowDivider extends StatelessWidget {
  const CustomRowDivider({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1.h,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            text,
            style: TextStyle(color: Colors.grey, fontSize: 14.sp),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 1.h,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
