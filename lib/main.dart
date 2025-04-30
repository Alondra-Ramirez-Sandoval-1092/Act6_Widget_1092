import 'package:flutter/material.dart';
import 'package:rutaramirez/pagina_inicial.dart';
import 'package:rutaramirez/widget_cinco.dart';
import 'package:rutaramirez/widget_cuatro.dart';
import 'package:rutaramirez/widget_diez.dart';
import 'package:rutaramirez/widget_dos.dart';
import 'package:rutaramirez/widget_nueve.dart';
import 'package:rutaramirez/widget_ocho.dart';
import 'package:rutaramirez/widget_once.dart';
import 'package:rutaramirez/widget_seis.dart';
import 'package:rutaramirez/widget_siete.dart';
import 'package:rutaramirez/widget_tres.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const WidgetDos(),
        '/pantalla3': (context) => const WidgetTres(),
        '/pantalla4': (context) => const Widgetcuatro(),
        '/pantalla5': (context) => const WidgetCinco(),
        '/pantalla6': (context) => const WidgetSeis(),
        '/pantalla7': (context) => const WidgetSiete(),
        '/pantalla8': (context) => const WidgetOcho(),
        '/pantalla9': (context) => const WidgetNueve(),
        '/pantalla10': (context) => const WidgetDiez(),
        '/pantalla11': (context) => const WidgetOnce(),
      },
    );
  }
}
