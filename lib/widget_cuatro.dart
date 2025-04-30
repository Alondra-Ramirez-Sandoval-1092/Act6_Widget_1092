import 'package:flutter/material.dart';

class Widgetcuatro extends StatefulWidget {
  const Widgetcuatro({Key? key}) : super(key: key);

  @override
  State<Widgetcuatro> createState() => _WidgetcuatroState();
}

class _WidgetcuatroState extends State<Widgetcuatro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff81add7), // Fondo menta
        titleTextStyle: const TextStyle(
          color: Colors.white, // Letra blanca
          fontSize: 20.0, // Tamaño 20
        ),
        title: const Center(
          child: Text('Widget 4'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                SizedBox(
                  width: 200.0,
                  height: 100.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.zero, // Elimina bordes redondeados
                      ),
                      padding: EdgeInsets.zero, // Elimina padding interno
                    ),
                    onPressed: () {},
                    child: Container(),
                  ),
                ),
                SizedBox(
                  width: 100.0,
                  height: 200.0,
                  child: AbsorbPointer(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade200,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.zero, // Elimina bordes redondeados
                        ),
                        padding: EdgeInsets.zero, // Elimina padding interno
                      ),
                      onPressed: () {},
                      child: Container(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Pantalla Inicial!'),
            ),
          ],
        ),
      ),
    );
  }
}
