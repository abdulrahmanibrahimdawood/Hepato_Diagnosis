import 'package:e_commerce/constants.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_form_feild.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/social_login_botton.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: khorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
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
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '! Forget Password ',
                style: TextStyle(
                    color: AppColor.kPrimaryColor.withValues(alpha: 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            CustomButton(onPressed: () {}, text: 'Login'),
            const SizedBox(
              height: 33,
            ),
            const DontHaveAnAccountWidget(),
            const SizedBox(
              height: 33,
            ),
            const OrDivider(),
            const SizedBox(
              height: 33,
            ),
            SocialLoginButton(
              onPressed: () {},
              icon: Assets.assetsImagesGoogleIcon,
              title: 'Register with Google',
            ),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              onPressed: () {},
              icon: Assets.assetsImagesFacebookIcon,
              title: 'Register with Facebook',
            ),
          ],
        ),
      ),
    );
  }
}
