// Importa los paquetes necesarios para Flutter y un paquete llamado 'badges' que se utiliza para agregar insignias a los widgets.
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

// Define un widget llamado HomeAppBar.
class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retorna un Container que contiene un Row.
    return Container(
      // Color de fondo del Container.
      color: Colors.white,
      // Espaciado interno del Container.
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          // Icono de menú de hamburguesa.
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          // Espaciado //entre el icono y el texto del título.
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              // Texto del título de la aplicación.
              "FANN LOST",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C53A5)),
            ),
          ),
          // Espaciado flexible para ocupar el espacio restante en la fila.
          Spacer(),
          // Widget de insignia que muestra el número de elementos en el carrito.
          badges.Badge(
            // Contenido de la insignia (número de elementos en el carrito).
            badgeContent: Text(
              "3",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            // Estilo de la insignia.
            badgeStyle: badges.BadgeStyle(
              // Color de fondo de la insignia.
              badgeColor: Colors.red,
              // Espaciado interno de la insignia.
              padding: EdgeInsets.all(7),
            ),
            // Widget que muestra el ícono.
            child: InkWell(
              // Acción al hacer clic en el widget (no está implementada en este código).
              onTap: () {
                Navigator.pushNamed(context, "CartPage");
              },
              // Icono del campana de nueva notificación, podemos cambiarla por otro ícono como el notificación ese me parecía bien .
              child: Icon(
                Icons.campaign_outlined,
                size: 32,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
