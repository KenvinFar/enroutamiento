import 'package:flutter/material.dart';

class contenido extends StatelessWidget {
  const contenido({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 180, 247, 232),
      body: ListView(
        children: <Widget>[
          CircleAvatar(
            radius: 150.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/flutter.png'),
          ),
          Text(
            'Rutas en flutter',
            style: TextStyle(
              fontFamily: 'cursiva',
              fontSize: 35.0,
            ),
          ),
          Divider(
            height: 20.0,
          ),
          Text(
            'Primero, crea dos rutas para trabajar con ellas. Como este es un ejemplo básico, cada ruta contiene solo un simple bóton. Pulsando el botón en la primera ruta navegas a la segunda ruta. Pulsando el botón en la segunda ruta vuelves a la primera ruta.',
            style: TextStyle(
              fontFamily: 'cursiva',
              fontSize: 20.0,
            ),
          ),
          Divider(
            height: 20.0,
          ),
          Text(
            'Para navegar a una nueva ruta, usa el método Navigator.push. El método push agregará una Route a la pila de rutas administradas por el Navigator. Pero ¿de dónde viene la Route? Puedes crear la tuya, o usar un MaterialPageRoute. MaterialPageRoute es muy práctico, ya que la transición a la nueva ruta usa una animación específica de la plataforma.',
            style: TextStyle(
              fontFamily: 'cursiva',
              fontSize: 20.0,
            ),
          ),
          Divider(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Volver a la página de inicio'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 206, 99, 233),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
