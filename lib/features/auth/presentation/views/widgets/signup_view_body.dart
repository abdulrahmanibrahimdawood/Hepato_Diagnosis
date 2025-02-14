import 'package:e_commerce/constants.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_form_feild.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/terms_and_condations.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: khorizontalPadding),
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          const CustomTextFormFeild(
            icon: Icon(
              Icons.person,
              color: Colors.blueGrey,
            ),
            textInputType: TextInputType.name,
            hintText: 'Name',
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomTextFormFeild(
            icon: Icon(
              Icons.email,
              color: Colors.blueGrey,
            ),
            textInputType: TextInputType.emailAddress,
            hintText: 'Email',
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomTextFormFeild(
            suffixIcon: Icon(Icons.remove_red_eye, color: Colors.blueGrey),
            icon: Icon(Icons.lock, color: Colors.blueGrey),
            textInputType: TextInputType.visiblePassword,
            hintText: 'Password',
          ),
          const SizedBox(
            height: 16,
          ),
          const TermsAndCondationsWidgets(),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: 'Create an account',
            onPressed: () {},
          ),
          const SizedBox(
            height: 26,
          ),
          const HaveAnAccountWidget()
        ],
      ),
    ));
  }
}
