import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hepato_diagnosis/constant.dart';
import 'package:hepato_diagnosis/pages/analysis_page.dart';
import 'package:hepato_diagnosis/pages/doctors_page.dart';
import 'package:hepato_diagnosis/pages/first_board_page.dart';
import 'package:hepato_diagnosis/pages/home_page.dart';
import 'package:hepato_diagnosis/pages/log_in_page.dart';
import 'package:hepato_diagnosis/pages/on_board_screen.dart';
import 'package:hepato_diagnosis/pages/questions_page.dart';
import 'package:hepato_diagnosis/pages/register_page.dart';
import 'package:hepato_diagnosis/pages/scound_board_page.dart';
import 'package:hepato_diagnosis/pages/third_board_page.dart';

void main() {
  runApp(const HepatoDiagnosis());
}

class HepatoDiagnosis extends StatelessWidget {
  const HepatoDiagnosis({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, child) {
        return MaterialApp(
          routes: {
            kOnBoardScreenState: (context) => const OnBoardScreenState(),
            // kOpenAppPage: (context) => const OpenAppPage(),
            kFirstPage: (context) => const FirstPage(),
            kScoundPage: (context) => const ScoundPage(),
            kThirdPage: (context) => const ThirdPage(),
            kLogInPage: (context) => const LogInPage(),
            kRegister: (context) => const Register(),
            kHomePage: (context) => const HomePage(),
            kAnalysisPage: (context) => const AnalysisPage(),
            kQuestionsPage: (context) => const QuesthionsPage(),
            kDoctorsPage: (context) => const DoctorsPage(),
          },
          debugShowCheckedModeBanner: false,
          home: const Scaffold(
            body: QuesthionsPage(),
            //   body: AnimatedSplashScreen(
            //     duration: 2000,
            //     splash: Center(
            //       child: Transform.scale(
            //         scale: 2.5.w,
            //         child: Image.asset(
            //           'assets/splash.png',
            //         ),
            //       ),
            //     ),
            //     nextScreen: const OnBoardScreenState(),
            //     splashTransition: SplashTransition.fadeTransition,
            //     backgroundColor: kPrimaryColor,
            //   ),
          ),
        );
      },
    );
  }
}
