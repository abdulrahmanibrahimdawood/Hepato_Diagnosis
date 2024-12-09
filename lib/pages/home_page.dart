import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/constant.dart';
import 'package:hepato_diagnosis/widget/custom_body_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = kHomePage;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 700, child: CustomBodyHomePage()),
              // BodyBottomAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}
