import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Imagen de fondo
        Image.asset(
          'assets/images/hero_background.jpg',
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ),
        // Texto superpuesto
        Positioned(
          left: 20,
          top: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bienvenido a la UPDS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Formando líderes para el futuro',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ver Carreras'),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.accentColor,
                  onPrimary: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
