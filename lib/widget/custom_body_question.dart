import 'package:flutter/material.dart';

class CustomBodyQuestion extends StatelessWidget {
  const CustomBodyQuestion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 189, 185, 185),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(11),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Color.fromARGB(255, 200, 199, 199),
            spreadRadius: 0,
            offset: Offset(-5, -5),
          ),
        ],
      ),
      child: const Column(
        children: [
          Text(
            'What treatment options are',
            style: TextStyle(
                color: Color(0xFF4781C0),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 19,
          ),
          Text(
            'Options incclude dialysis or kidney',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}