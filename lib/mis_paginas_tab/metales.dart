import 'package:flutter/material.dart';

class MetalesPage extends StatelessWidget {
  const MetalesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inversiones: Metales')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://raw.githubusercontent.com/RubenMendozaCastrejon/Imagenes-Exam/refs/heads/main/que-es-el-oro-de-ley-que-tipos-de-oro-se-utilizan-en-joyeria.jpg', height: 200),
            const SizedBox(height: 20),
            const Text('Commodities: Oro, Plata y Platino', 
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