import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hepato_diagnosis/constant.dart';
import 'package:hepato_diagnosis/widget/custom_buttom_log_in.dart';
import 'package:hepato_diagnosis/widget/custom_inkwell_login.dart';
import 'package:hepato_diagnosis/widget/custom_row_divider.dart';
import 'package:hepato_diagnosis/widget/custom_row_icons_log_in.dart';
import 'package:hepato_diagnosis/widget/custom_text_form_feild.dart';

class Register extends StatelessWidget {
  const Register({super.key});
  static String id = kRegister;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(color: kPrimaryColor),
                height: 230.h,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/splash.png'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomInkWellLogIn(
                            onTap: () {
                              Navigator.pushNamed(context, kLogInPage);
                            },
                            text: 'Sign in',
                          ),
                          const CustomInkWellLogIn(
                            text: 'Sign up',
                            borderColor: kPrimaryColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.h),
                    const CustomTextFormFeild(
                      hintText: 'Email',
                      icon: Icons.email,
                    ),
                    SizedBox(height: 20.h),
                    const CustomTextFormFeild(
                        hintText: 'Password', icon: Icons.lock),
                    SizedBox(height: 10.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forget Password !",
                        style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    const CustomButtomLogIn(text: 'Sign in'),
                    SizedBox(height: 20.h),
                    const CustomRowDivider(
                      text: 'Or Sign up with',
                    ),
                    SizedBox(height: 30.h),
                    const RowIconsLogIn(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
