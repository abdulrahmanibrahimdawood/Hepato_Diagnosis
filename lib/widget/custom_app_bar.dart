import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/constant.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.text1,
  });
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: const BoxDecoration(color: kPrimaryColor),
      child: Center(
        child: Text(
          text1,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
    );
  }
}
