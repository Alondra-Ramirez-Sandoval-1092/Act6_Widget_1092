import 'package:flutter/material.dart';

class WidgetSeis extends StatefulWidget {
  const WidgetSeis({Key? key}) : super(key: key);

  @override
  State<WidgetSeis> createState() => _WidgetSeisState();
}

class _WidgetSeisState extends State<WidgetSeis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff36a5d7),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        title: const Center(
          child: Text('Widget 6'),
        ),
      ),
      body: Center(
        // Widget Center adicional para centrar horizontalmente
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centra verticalmente los hijos
          children: [
            Container(
              height: 120.0,
              width: double.infinity,
              color: Colors.blueGrey,
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla Inicial!'),
            ),
          ],
        ),
      ),
    );
  }
}
