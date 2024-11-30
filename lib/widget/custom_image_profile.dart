import 'package:flutter/material.dart';

class CustomImageProfile extends StatelessWidget {
  const CustomImageProfile({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 40,
                spreadRadius: 2,
                color: Colors.grey.withOpacity(0.15)),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image.asset(
          'assets/person_image.png',
          height: 55,
          width: 55,
        ),
      ),
    );
  }
}
