import 'package:e_commerce/constants.dart';
import 'package:e_commerce/core/helper_functions/build_error_bar.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_form_feild.dart';
import 'package:e_commerce/core/widgets/password_feild.dart';
import 'package:e_commerce/features/auth/presentation/cubits/signup_cupit/cubit/signup_cubit.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/terms_and_condations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String email, userName, password;
  late bool istermedAccepts = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: khorizontalPadding),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            CustomTextFormFeild(
              onSaved: (value) {
                userName = value!;
              },
              icon: const Icon(
                Icons.person,
                color: Colors.blueGrey,
              ),
              textInputType: TextInputType.name,
              hintText: 'Name',
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormFeild(
              onSaved: (value) {
                email = value!;
              },
              icon: const Icon(
                Icons.email,
                color: Colors.blueGrey,
              ),
              textInputType: TextInputType.emailAddress,
              hintText: 'Email',
            ),
            const SizedBox(
              height: 16,
            ),
            PasswordFeild(
              onSaved: (value) {
                password = value!;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            TermsAndCondationsWidgets(
              onChanged: (value) {
                istermedAccepts = value;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              text: 'Create an account',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  if (istermedAccepts) {
                    context
                        .read()<SignupCubit>()
                        .createUserWithEmailAndPassword(
                            email, password, userName);
                  } else {
                    buildErrorBar(
                        context, ' You must accept the terms and conditions');
                  }
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
            const SizedBox(
              height: 26,
            ),
            const HaveAnAccountWidget()
          ],
        ),
      ),
    ));
  }
}
