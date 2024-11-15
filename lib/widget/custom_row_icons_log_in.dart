import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowIconsLogIn extends StatelessWidget {
  const RowIconsLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContainerIcons(
          icon: FontAwesomeIcons.google,
          color: Colors.red,
        ),
        SizedBox(
          width: 30,
        ),
        ContainerIcons(
          icon: FontAwesomeIcons.facebook,
          color: Color(0XFF1977F3),
        ),
        SizedBox(
          width: 30,
        ),
        ContainerIcons(
          icon: Icons.apple,
          color: Colors.black,
        ),
      ],
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
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: FaIcon(
          icon,
          size: 50,
          color: color,
        ),
      ),
    );
  }
}
