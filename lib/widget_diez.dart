import 'package:flutter/material.dart';

class WidgetDiez extends StatefulWidget {
  const WidgetDiez({Key? key}) : super(key: key);

  @override
  State<WidgetDiez> createState() => _WidgetDiezState();
}

class _WidgetDiezState extends State<WidgetDiez> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffdb7658), // Fondo menta
        titleTextStyle: const TextStyle(
          color: Colors.white, // Letra blanca
          fontSize: 20.0, // Tamaño 20
        ),
        title: const Center(
          child: Text('Widget 10'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Cambiar Imagen',
              style: TextStyle(
                color: Color(0xff413939),
              ),
            ),
          ),
          AnimatedCrossFade(
            firstChild: Image.asset(
              'assets/icon/wall1.jpeg',
              width: double.infinity,
            ),
            secondChild: Image.asset(
              'assets/icon/wall2.jpg',
              width: double.infinity,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Pantalla Inicial!'),
          ),
        ],
      ),
    );
  }
}
