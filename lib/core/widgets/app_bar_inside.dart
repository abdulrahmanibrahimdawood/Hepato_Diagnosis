import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarInside extends StatelessWidget {
  const CustomAppBarInside({
    super.key,
    required this.text1,
  });
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: const BoxDecoration(color: AppColor.kPrimaryColor),
        child: Center(
          child: Text(
            text1,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
      Positioned(
        top: 7,
        left: 7,
        child: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, CustomNavBar.routeName);
            },
            icon: const FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: AppColor.kPrimaryColor,
            ),
          ),
        ),
      ),
    ]);
  }
}
