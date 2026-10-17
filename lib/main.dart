import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LDSW - Introducción a los widgets',
      debugShowCheckedModeBanner: false,
      home: const WidgetsPage(),
    );
  }
}

class WidgetsPage extends StatelessWidget {
  const WidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LDSW - Introducción a los widgets'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ============ 1. TEXT ============
            const Text(
              '1. Widget text',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Este es un ejemplo del widget de texto. Sirve para mostrar cadenas de texto y permite personalizar fuente, tamaño y estilo.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 24),

            // ============ 2. CONTAINER ============
            const Text(
              '2. Widget contenedor',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.indigo, width: 2),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: const Text(
                'Soy un contenedor: una caja con padding, margen, borde, sombra y color de fondo.',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),

            // ============ 3. ROW ============
            const Text(
              '3. Widget en fila',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIconoBox(Icons.star, Colors.orange, 'Favorito'),
                _buildIconoBox(Icons.favorite, Colors.red, 'Me gusta'),
                _buildIconoBox(Icons.share, Colors.blue, 'Compartir'),
              ],
            ),
            const SizedBox(height: 24),

            // ============ 4. STACK ============
            const Text(
              '4. Widget stack',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.indigo, Colors.purple],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const Positioned(
                    top: 10,
                    right: 10,
                    child: Icon(Icons.movie, color: Colors.white, size: 40),
                  ),
                  const Center(
                    child: Text(
                      'Soy un stack\n(las capas se superponen)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // ============ 5. COLUMN ============
            const Text(
              '5. Widget de columna',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 8),
            Column(
              children: [
                _buildFilaColor('Elemento 1 de la columna', Colors.teal),
                _buildFilaColor('Elemento 2 de la columna', Colors.teal.shade300),
                _buildFilaColor('Elemento 3 de la columna', Colors.teal.shade100),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildIconoBox(IconData icono, Color color, String etiqueta) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(icono, color: color, size: 32),
        ),
        const SizedBox(height: 6),
        Text(etiqueta, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildFilaColor(String texto, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        texto,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}