// Coloca las importaciones al inicio del archivo
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          // Información de contacto
          Text(
            'Contacto',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'Dirección: Av. Ejemplo #123, Bolivia',
            style: TextStyle(color: Colors.white70),
          ),
          Text(
            'Teléfono: +591 12345678',
            style: TextStyle(color: Colors.white70),
          ),
          Text(
            'Email: info@upds.edu.bo',
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 20),
          // Redes sociales
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _socialIcon(Icons.facebook),
              _socialIcon(Icons.twitter),
              _socialIcon(Icons.instagram),
            ],
          ),
        ],
      ),
    );
  }

  Widget _socialIcon(IconData icon) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Icon(icon, color: Colors.white),
    );
  }
}
