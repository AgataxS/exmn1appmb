import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo de la UPDS
          Image.asset('assets/images/logo.png', height: 50),
          // Menú de navegación
          Row(
            children: [
              _navItem('Inicio'),
              _navItem('Carreras'),
              _navItem('Admisiones'),
              _navItem('Campus'),
              _navItem('Contacto'),
            ],
          ),
          // Botón CTA
          ElevatedButton(
            onPressed: () {},
            child: Text('Inscríbete Ahora'),
            style: ElevatedButton.styleFrom(
              primary: AppColors.accentColor,
              onPrimary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _navItem(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
