import 'package:flutter/material.dart';

class WidgetDos extends StatefulWidget {
  const WidgetDos({super.key});

  @override
  State<WidgetDos> createState() => _WidgetDosState();
}

class _WidgetDosState extends State<WidgetDos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffbc96ef), // Fondo menta
        titleTextStyle: const TextStyle(
          color: Colors.white, // Letra blanca
          fontSize: 20.0, // Tamaño 20
        ),
        title: const Center(
          child: Text('Widget 2'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('Show About Dialog'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const AboutDialog(
                  applicationIcon: FlutterLogo(),
                  applicationLegalese: 'Legalese',
                  applicationName: 'Flutter App',
                  applicationVersion: 'version 1.0.0',
                  children: [
                    Text('This is a text created by Flutter Mapp'),
                  ],
                ),
              );
            },
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
    );
  }
}
