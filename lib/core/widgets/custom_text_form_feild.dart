import 'package:e_commerce/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.icon,
      this.suffixIcon,
      this.onSaved});
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final Widget? icon;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your $hintText';
        }
        return null;
      },
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.end,
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: icon,
        prefixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 16, color: Colors.blueGrey),
        filled: true,
        fillColor: AppColor.kPrimaryColor.withValues(alpha: 0.1),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.grey,
      ),
    );
  }
}
