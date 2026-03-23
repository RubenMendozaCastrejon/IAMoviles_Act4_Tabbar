import 'package:flutter/material.dart';

class EmpresasPage extends StatelessWidget {
  const EmpresasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inversiones: Empresas')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://raw.githubusercontent.com/RubenMendozaCastrejon/Imagenes-Exam/refs/heads/main/Empresa.png', height: 200),
            const SizedBox(height: 20),
            const Text('Acciones de la Bolsa de Valores', 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              label: const Text('Regresar', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF0D47A1)),
            ),
          ],
        ),
      ),
    );
  }
}