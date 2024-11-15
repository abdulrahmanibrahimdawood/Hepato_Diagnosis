import 'package:flutter/material.dart';
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
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/splash.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
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
                    const SizedBox(
                      height: 40,
                    ),
                    const CustomTextFormFeild(
                      icon: Icons.email,
                      hintText: 'Email',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextFormFeild(
                      icon: Icons.lock,
                      hintText: 'Password',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forget Password !",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomButtomLogIn(
                      text: 'Sign in',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomRowDivider(
                      text: 'Or Sign in with',
                    ),
                    const SizedBox(
                      height: 30,
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
