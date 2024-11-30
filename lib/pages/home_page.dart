import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hepato_diagnosis/constant.dart';
import 'package:hepato_diagnosis/widget/custom_buttom_app_bar.dart';
import 'package:hepato_diagnosis/widget/custom_dvice_list.dart';
import 'package:hepato_diagnosis/widget/custom_icons_bottom_in_home_page.dart';
import 'package:hepato_diagnosis/widget/custom_image_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = kHomePage;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomIconsButtomHomePage(
                    icon: FontAwesomeIcons.bars,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      CustomImageProfile(
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome to HDx app !',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Advice',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 15),
              const DevicesListView(),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: kPrimaryColor,
                ),
                child: const Center(
                  child: Text(
                    'Go to analysis',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 24),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const BodyBottomAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}
