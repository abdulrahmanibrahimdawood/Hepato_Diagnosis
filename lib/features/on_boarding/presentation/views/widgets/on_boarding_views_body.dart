import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/core/services/shared_preferences_singleton.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/auth/presentation/views/signin_view.dart';
import 'package:e_commerce/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewsBody extends StatefulWidget {
  const OnBoardingViewsBody({super.key});

  @override
  State<OnBoardingViewsBody> createState() => _OnBoardingViewsBodyState();
}

class _OnBoardingViewsBodyState extends State<OnBoardingViewsBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPage = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 3,
          position: currentPage,
          decorator: DotsDecorator(
            activeColor: AppColor.kPrimaryColor,
            color: AppColor.kPrimaryColor.withValues(alpha: 0.5),
            spacing: const EdgeInsets.all(5.0),
            size: const Size(9.0, 9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: currentPage == 2 ? true : false,
          child: GestureDetector(
            onTap: () {
              SharedPrefs.setBool(kIsOnboardingViewSeen, true);
              Navigator.of(context).pushReplacementNamed(SigninView.routeName);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: khorizontalPadding,
              ),
              child: CustomButton(
                  onPressed: () {
                    SharedPrefs.setBool(kIsOnboardingViewSeen, true);
                    Navigator.of(context)
                        .pushReplacementNamed(SigninView.routeName);
                  },
                  text: 'Start Now'),
            ),
          ),
        ),
        const SizedBox(
          height: 43,
        )
      ],
    );
  }
}
