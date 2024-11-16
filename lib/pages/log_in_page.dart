import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hepato_diagnosis/constant.dart';
import 'package:hepato_diagnosis/widget/custom_buttom_log_in.dart';
import 'package:hepato_diagnosis/widget/custom_inkwell_login.dart';
import 'package:hepato_diagnosis/widget/custom_row_divider.dart';
import 'package:hepato_diagnosis/widget/custom_row_icons_log_in.dart';
import 'package:hepato_diagnosis/widget/custom_text_form_feild.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});
  static String id = kLogInPage;

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
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomInkWellLogIn(
                            text: 'Sign in',
                            borderColor: kPrimaryColor,
                          ),
                          CustomInkWellLogIn(
                            onTap: () {
                              Navigator.pushNamed(context, kRegister);
                            },
                            text: 'Sign up',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    const CustomTextFormFeild(
                      icon: Icons.email,
                      hintText: 'Email',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomTextFormFeild(
                      icon: Icons.lock,
                      hintText: 'Password',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forget Password !",
                        style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomButtomLogIn(
                      text: 'Sign in',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomRowDivider(
                      text: 'Or Sign in with',
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const RowIconsLogIn(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
