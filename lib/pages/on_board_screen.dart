import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/constant.dart';
import 'package:hepato_diagnosis/pages/first_board_page.dart';
import 'package:hepato_diagnosis/pages/scound_board_page.dart';
import 'package:hepato_diagnosis/pages/third_board_page.dart';

class OnBoardScreenState extends StatefulWidget {
  const OnBoardScreenState({super.key});
  static String id = kOnBoardScreenState;
  @override
  State<OnBoardScreenState> createState() => _OnBoardScreenStateState();
}

class _OnBoardScreenStateState extends State<OnBoardScreenState> {
  PageController controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: PageView(
                    onPageChanged: (value) {
                      setState(() {
                        index = value;
                      });
                    },
                    controller: controller,
                    children: const [
                      FirstPage(),
                      ScoundPage(),
                      ThirdPage(),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIndecator(
                      active: index == 0,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CustomIndecator(
                      active: index == 1,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CustomIndecator(
                      active: index == 2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    index == 2
                        ? Navigator.pushNamed(context, kLogInPage)
                        : controller.animateToPage(index + 1,
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.linear);
                  },
                  child: Container(
                    height: 50,
                    width: 370,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        index == 2 ? 'Start' : 'Next',
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    controller.animateToPage(index - 1,
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.linear);
                  },
                  child: index == 0
                      ? Container(
                          height: 50,
                          width: 370,
                        )
                      : Container(
                          height: 50,
                          width: 370,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: .5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              'Back',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor),
                            ),
                          ),
                        ),
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
            index < 2
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Skip',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (index == 0) {
                            controller.animateToPage(index + 2,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.linear);
                          } else {
                            controller.animateToPage(index + 1,
                                duration: const Duration(milliseconds: 250),
                                curve: Curves.linear);
                          }
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                : const Text(''),
          ],
        ),
      ),
    );
  }
}

class CustomIndecator extends StatelessWidget {
  const CustomIndecator({super.key, required this.active});
  final bool active;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: active ? kPrimaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(100),
      ),
      height: 10,
      width: active ? 30 : 10,
    );
  }
}
