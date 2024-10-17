import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String tabName; // Nuevo parámetro para el nombre de la pestaña

  const MyTab({
    super.key,
    required this.iconPath,
    required this.tabName, // Asegúrate de incluir este parámetro en el constructor
  });

  @override
  Widget build(BuildContext context) {
    return Column( // Cambiamos a un Column para poner el texto debajo del ícono
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(8),
          child: Image.asset(iconPath, color: Colors.grey[600]),
        ),
        const SizedBox(height: 4), // Espacio entre el ícono y el nombre
        Text(
          tabName, // Mostrar el nombre de la pestaña
          style: const TextStyle(fontSize: 14), // Estilo del texto
        ),
      ],
    );
  }
}
