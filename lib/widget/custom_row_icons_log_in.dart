import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowIconsLogIn extends StatelessWidget {
  const RowIconsLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ContainerIcons(
            icon: FontAwesomeIcons.google,
            color: Colors.red,
          ),
          SizedBox(
            width: 30.w,
          ),
          const ContainerIcons(
            icon: FontAwesomeIcons.facebook,
            color: Color(0XFF1977F3),
          ),
          SizedBox(
            width: 30.w,
          ),
          const ContainerIcons(
            icon: Icons.apple,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class ContainerIcons extends StatelessWidget {
  const ContainerIcons({
    super.key,
    required this.icon,
    this.onPressed,
    this.color,
  });
  final IconData? icon;
  final void Function()? onPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 50.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(
        child: FaIcon(
          icon,
          size: 25.w,
          color: color,
        ),
      ),
    );
  }
}
