// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:hepato_diagnosis/constant.dart';

// class CustomBottomAppBarIcons extends StatelessWidget {
//   const CustomBottomAppBarIcons({
//     super.key,
//     required this.text,
//     required this.icon,
//     required this.onPressed,
//     required this.isActive,
//   });

//   final String text;
//   final IconData icon;
//   final void Function()? onPressed;
//   final bool isActive;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         IconButton(
//           onPressed: onPressed,
//           icon: FaIcon(
//             icon,
//             color: isActive ? kPrimaryColor : Colors.grey,
//             size: 28,
//           ),
//         ),
//         Text(
//           text,
//           style: TextStyle(
//               color: isActive ? kPrimaryColor : Colors.grey,
//               fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }
// }

// class BodyBottomAppBar extends StatefulWidget {
//   const BodyBottomAppBar({super.key});

//   @override
//   State<BodyBottomAppBar> createState() => _BodyBottomAppBarState();
// }

// class _BodyBottomAppBarState extends State<BodyBottomAppBar> {
//   int activeIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       decoration: const BoxDecoration(),
//       child: Padding(
//         padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             CustomBottomAppBarIcons(
//               onPressed: () {
//                 setState(() {
//                   activeIndex = 0;
//                 });
//               },
//               icon: FontAwesomeIcons.houseChimneyMedical,
//               text: 'Home',
//               isActive: activeIndex == 0,
//             ),
//             CustomBottomAppBarIcons(
//               onPressed: () {
//                 setState(() {
//                   activeIndex = 1;
//                 });
//               },
//               icon: Icons.analytics_sharp,
//               text: 'Analysis',
//               isActive: activeIndex == 1,
//             ),
//             CustomBottomAppBarIcons(
//               onPressed: () {
//                 setState(() {
//                   activeIndex = 2;
//                 });
//               },
//               icon: Icons.question_answer,
//               text: 'Questions',
//               isActive: activeIndex == 2,
//             ),
//             CustomBottomAppBarIcons(
//               onPressed: () {
//                 setState(() {
//                   activeIndex = 3;
//                 });
//               },
//               icon: FontAwesomeIcons.stethoscope,
//               text: 'Doctors',
//               isActive: activeIndex == 3,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hepato_diagnosis/constant.dart';
import 'package:hepato_diagnosis/pages/analysis_page.dart';
import 'package:hepato_diagnosis/pages/doctors_page.dart';
import 'package:hepato_diagnosis/pages/home_page.dart';
import 'package:hepato_diagnosis/pages/questions_page.dart';

class CustomBottomAppBarIcons extends StatefulWidget {
  const CustomBottomAppBarIcons({super.key});

  @override
  State<CustomBottomAppBarIcons> createState() => _MainPageState();
}

class _MainPageState extends State<CustomBottomAppBarIcons> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    HomePage(),
    AnalysisPage(),
    QuesthionsPage(),
    DoctorsPage(),
  ];

  static const List<BottomNavigationBarItem> _navigationItems = [
    BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.house),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.notesMedical),
      label: 'Analysis',
    ),
    BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.clipboardQuestion),
      label: 'Questions',
    ),
    BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.userDoctor),
      label: 'Doctors',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: _navigationItems,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: Colors.grey,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            elevation: 0,
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
