import 'package:e_commerce/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class TermsAndCondationsWidgets extends StatefulWidget {
  const TermsAndCondationsWidgets({super.key});

  @override
  State<TermsAndCondationsWidgets> createState() =>
      _TermsAndCondationsWidgetsState();
}

class _TermsAndCondationsWidgetsState extends State<TermsAndCondationsWidgets> {
  bool isTermedAccepts = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'By creating an account, you agree to ',
                  style: TextStyle(
                    color: Color(0xFF949D9E),
                    fontSize: 15,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: 'Our Terms and Conditions',
                  style: TextStyle(
                    color: Color(0xFF4781BF),
                    fontSize: 15,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(width: 16),
        CustomCheckBox(
          onChecked: (value) {
            isTermedAccepts = value;
            setState(() {});
          },
          isChecked: isTermedAccepts,
        ),
      ],
    );
  }
}
