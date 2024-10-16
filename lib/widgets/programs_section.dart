import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class ProgramsSection extends StatelessWidget {
  final List<Map<String, String>> programs = [
    {
      'title': 'Ingeniería de Sistemas',
      'image': 'assets/images/systems_engineering.jpg',
    },
    {
      'title': 'Administración de Empresas',
      'image': 'assets/images/business_administration.jpg',
    },
    {
      'title': 'Derecho',
      'image': 'assets/images/law.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'Nuestras Carreras',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: programs.map((program) {
              return Card(
                child: ListTile(
                  leading: Image.asset(program['image'], width: 50),
                  title: Text(program['title']),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Navegar a detalles de la carrera
                  },
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
