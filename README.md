# Prompt
Crea una aplicación de inversiones llamada "Investech". El diseño debe ser minimalista, moderno y profesional, utilizando una paleta de colores basada en el Azul Empresarial (Deep Blue: 0xFF0D47A1).

Estructura de Navegación:
- Implementa un Scaffold principal con un BottomNavigationBar de 5 botones. Cada botón debe seguir el formato: Icono superior + Texto inferior.
-Los estados del menú deben ser dinámicos: cuando una opción esté seleccionada, tanto el icono como el texto deben cambiar a color azul brillante; el estado inactivo debe ser gris oscuro.
- Las 5 categorías son: Empresas, Criptomonedas, ETF, Divisas y Metales.

Arquitectura y Rutas:
- Utiliza Rutas Nombradas en el archivo main.dart.
- Organiza el proyecto de forma modular: las pantallas deben residir en una carpeta llamada mis_paginas_tab/.
- Los nombres de los archivos deben seguir la convención: empresas.dart, criptomonedas.dart, etf.dart, divisas.dart y metales.dart.

Diseño de Pantallas Individuales:
- Cada pantalla debe incluir un AppBar con el título de la sección y un botón de retroceso funcional (Navigator.pop).
- En el cuerpo (body), incluye una imagen hero traída desde la red (usa https://picsum.photos/ con dimensiones de 600x300) que tenga bordes redondeados (BorderRadius.circular(15)).
- Debajo de la imagen, añade un título descriptivo con tipografía FontWeight.bold y un botón estilizado para regresar a la home.

# Capturas
