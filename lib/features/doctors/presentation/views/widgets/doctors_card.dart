import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/features/doctors/presentation/views/map_view.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.kPrimaryColor.withValues(alpha: .5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/app_icon.png'),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Name: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      TextSpan(
                        text: 'Abdelaziz Mohamed',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Age: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      TextSpan(
                        text: '20',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Phone: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      TextSpan(
                        text: '+201288656555',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Governorate: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      TextSpan(
                        text: 'Dakahlia',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Location: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      TextSpan(
                        text: 'Mit ghamer',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'View Location: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: GestureDetector(
                          onTap: () {
                            // print('Location View Clicked');
                          },
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MapScreen(
                                    requiredLat: 30.0444, // خط العرض المطلوب
                                    requiredLng: 31.2357, // خط الطول المطلوب
                                  ),
                                ),
                              );
                            },
                            child: const Text(
                              'View',
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColor.kPrimaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
