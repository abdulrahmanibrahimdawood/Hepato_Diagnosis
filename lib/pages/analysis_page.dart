import 'package:flutter/material.dart';
import 'package:hepato_diagnosis/constant.dart';

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({super.key});

  static String id = kAnalysisPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4781C0),
        title: const Center(
          child: Text(
            'Analysis',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 70),
              child: Text(
                'If you suffer form upper abdominal pain :-',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Do Analysis',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Text(
                  ' Alkphon Alkaline Phosphatase.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      0xFF4781C0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 27),
                  child: Text(
                    'age',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  width: 110,
                ),
                Text(
                  'gender',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Text(
                  'AAP',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(
                      0xFF4781C0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 187, 185, 185),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  width: 90,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(255, 187, 185, 185),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  width: 90,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(255, 187, 185, 185),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 50),
              child: Text(
                'If you suffer form unorexia,vomiting,fatigue:-',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Do Analysis',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Text(
                  ' AIT',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      0xFF4781C0,
                    ),
                  ),
                ),
                Text(
                  ' and ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  ' AST.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      0xFF4781C0,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 27),
                  child: Text(
                    'AST',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xFF4781C0)),
                  ),
                ),
                SizedBox(
                  width: 110,
                ),
                Text(
                  'ALT',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF4781C0)),
                ),
                SizedBox(
                  width: 80,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 187, 185, 185),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  width: 90,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(255, 187, 185, 185),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 165),
              child: Text(
                'If you suffer form jaundice:-',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Do Analysis',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Text(
                  ' Direct Bilirubin.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      0xFF4781C0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 27),
                  child: Text(
                    'DBIL',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xFF4781C0)),
                  ),
                ),
                SizedBox(
                  width: 110,
                ),
                SizedBox(
                  width: 80,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 187, 185, 185),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                const SizedBox(
                  width: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 100),
              child: Text(
                'If you suffer form edema lower limb:-',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Do Analysis',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Text(
                  ' Aldumin.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      0xFF4781C0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 27),
                  child: Text(
                    'ALB',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xFF4781C0)),
                  ),
                ),
                SizedBox(
                  width: 110,
                ),
                SizedBox(
                  width: 80,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 187, 185, 185),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.speaker,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 64,
                  ),
                  Text(
                    'Analysis',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 48,
                  ),
                  Text(
                    'Questions',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Doctors',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}