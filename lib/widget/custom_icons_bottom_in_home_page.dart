import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hepato_diagnosis/constant.dart';

class CustomIconsButtomHomePage extends StatelessWidget {
  const CustomIconsButtomHomePage({
    super.key,
    this.icon,
    this.onPressed,
    this.color,
    this.colorbox,
    this.hight,
    this.width,
  });
  final IconData? icon;
  final Color? color;
  final Color? colorbox;
  final double? hight;
  final double? width;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight ?? 60,
      width: width ?? 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 40,
              spreadRadius: 2,
              color: Colors.grey.withOpacity(0.15)),
        ],
        color: colorbox ?? Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: FaIcon(
          icon,
          color: color ?? kPrimaryColor,
        ),
      ),
    );
  }
}
