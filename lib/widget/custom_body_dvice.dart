import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/constant.dart';

class CustomBodyDvice extends StatelessWidget {
  const CustomBodyDvice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
          height: 300,
          decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          width: MediaQuery.of(context).size.width * 0.85,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const Text(
                  'Monitor Fluid Intake',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Image.asset(
                  'assets/dvice_photo.png',
                  height: 150,
                ),
                const Text(
                  " It’s crucial for kidney patients to keep an eye on their fluid intake. Drinking too much or too little can impact kidney function. A doctor can provide personalized guidance on the right amount based on your condition.",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          )),
    );
  }
}
//