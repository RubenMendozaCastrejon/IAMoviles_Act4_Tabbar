import 'package:flutter/material.dart';
import 'mis_paginas_tab/empresas.dart';
import 'mis_paginas_tab/criptomonedas.dart';
import 'mis_paginas_tab/etf.dart';
import 'mis_paginas_tab/divisas.dart';
import 'mis_paginas_tab/metales.dart';

void main() {
  runApp(const InvestechApp());
}

class InvestechApp extends StatelessWidget {
  const InvestechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investech',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Azul empresarial profundo
        primaryColor: const Color(0xFF0D47A1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0D47A1),
          foregroundColor: Colors.white,
        ),
      ),
      // Definición de Rutas Nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const MainNavigation(),
        '/empresas': (context) => const EmpresasPage(),
        '/criptomonedas': (context) => const CriptomonedasPage(),
        '/etf': (context) => const EtfPage(),
        '/divisas': (context) => const DivisasPage(),
        '/metales': (context) => const MetalesPage(),
      },
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  // Lista de nombres de rutas para navegar
  final List<String> _routes = [
    '/empresas',
    '/criptomonedas',
    '/etf',
    '/divisas',
    '/metales',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navegamos a la ruta correspondiente
    Navigator.pushNamed(context, _routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Investech - Dashboard'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.trending_up, size: 100, color: Colors.blue[900]),
            const SizedBox(height: 20),
            const Text(
              'Bienvenido a Investech',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Selecciona una categoría en el menú inferior.'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Permite más de 3 botones
        selectedItemColor: const Color(0xFF0D47A1), // Azul al hacer clic
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Empresas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_bitcoin),
            label: 'Cripto',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'ETF',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_exchange),
            label: 'Divisas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hourglass_empty), // Icono para Metales
            label: 'Metales',
          ),
        ],
      ),
    );
  }
}