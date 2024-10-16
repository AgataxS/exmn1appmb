import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'utils/app_colors.dart';

void main() {
  runApp(UPDSApp());
}

class UPDSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UPDS',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        fontFamily: 'OpenSans',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.accentColor,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
