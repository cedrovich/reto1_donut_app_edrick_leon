import 'package:flutter/material.dart';
import 'package:reto1_donut_app_edrick_leon/utils/donut_tile.dart';

// ignore: must_be_immutable
class DonutTab extends StatelessWidget {
  // Lista de donuts en venta
  final List donutOnSale = [
    // Cada donut tiene [donutFlavor, donutPrice, donutColor, imageName]
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Ice Cream", "36", Colors.green, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.pink, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.cyan, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.orange, "lib/images/chocolate_donut.png"],
  ];

  // Constructor de la clase
  DonutTab({super.key});

  // Cantidad de ítems y total del carrito
  int cartItems = 2; // Número de ítems en el carrito
  double cartTotal = 45.0; // Total del carrito

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // La lista de donuts en venta (grid)
        Expanded(
          child: GridView.builder(
            itemCount: donutOnSale.length, // Cantidad de donuts
            padding: const EdgeInsets.all(12), // Espaciado alrededor del grid
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Número de columnas
              childAspectRatio: 1 / 1.5, // Relación de aspecto de cada celda
            ),
            itemBuilder: (context, index) {
              // Retorna cada donut como un DonutTile
              return DonutTile(
                donutFlavor: donutOnSale[index][0],
                donutPrice: donutOnSale[index][1],
                donutColor: donutOnSale[index][2],
                imageName: donutOnSale[index][3],
              );
            },
          ),
        ),

        // Footer con total del carrito y botón para ver carrito
        Container(
          padding: const EdgeInsets.all(16), // Espaciado interno del footer
          decoration: BoxDecoration(
            color: Colors.white, // Color de fondo del footer
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)), // Bordes redondeados
            boxShadow: [
              // Sombra del footer
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Color de la sombra
                spreadRadius: 5, // Cuánto se expande la sombra
                blurRadius: 7, // Desenfoque de la sombra
                offset: const Offset(0, 3), // Desplazamiento de la sombra
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espaciado entre los hijos
            children: [
              // Cantidad de items y total
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Alinear al inicio
                children: [
                  Text(
                    '$cartItems Items | \$$cartTotal', // Muestra la cantidad de items y el total
                    style: const TextStyle(
                      fontWeight: FontWeight.bold, // Negrita
                      fontSize: 16, // Tamaño de fuente
                    ),
                  ),
                  Text(
                    'Delivery Charges included', // Texto adicional
                    style: TextStyle(
                      fontSize: 12, // Tamaño de fuente
                      color: Colors.grey[600], // Color gris
                    ),
                  ),
                ],
              ),

              // Botón para ver el carrito
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón de 'View Cart'
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[400], // Color de fondo del botón
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Bordes redondeados
                  ),
                ),
                child: const Text(
                  'View Cart', // Texto del botón
                  style: TextStyle(
                    color: Colors.white, // Color del texto del botón
                    fontWeight: FontWeight.bold, // Negrita
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
