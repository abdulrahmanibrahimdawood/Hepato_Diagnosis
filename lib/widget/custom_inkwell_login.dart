import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hepato_diagnosis/constant.dart';

class CustomInkWellLogIn extends StatelessWidget {
  const CustomInkWellLogIn({
    super.key,
    this.onTap,
    required this.text,
    this.borderColor,
  });
  final void Function()? onTap;
  final String text;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 15.w),
        child: Container(
          height: 50.h,
          width: 110.w,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  color: borderColor == null ? Colors.white : kPrimaryColor,
                  width: 3.w),
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: borderColor == null ? Colors.grey : kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp),
            ),
          ),
        ),
      ),
    );
  }
}
