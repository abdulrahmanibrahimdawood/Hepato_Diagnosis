import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/widget/custom_body_dvice.dart';

class CustomDevicesListView extends StatelessWidget {
  const CustomDevicesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return const CustomBodyDvice();
        }),
      ),
    );
  }
}
