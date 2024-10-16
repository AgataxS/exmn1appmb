import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/hero_section.dart';
import '../widgets/programs_section.dart';
import '../widgets/footer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            HeroSection(),
            ProgramsSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
