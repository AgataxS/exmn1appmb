import 'package:flutter/material.dart';
import '../utils/app_colors.dart';


class StudentLifeSection extends StatelessWidget {
  final List<String> images = [
    'assets/images/student_life1.jpg',
    'assets/images/student_life2.jpg',
    'assets/images/student_life3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor.withOpacity(0.05),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'Vida Estudiantil',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: images.map((image) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Image.asset(image),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
