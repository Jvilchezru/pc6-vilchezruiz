import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const PrincipalPage(),
    );
  }
}

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, size: 25),
            tooltip: 'Buscar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Botón para realizar búsquedas')));
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  'Opciones',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Mensajes'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configuración'),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Cerrar Sesión'),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 179, 205, 252),
      body: Center(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'RESERVA DE CONCIERTOS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 38,
                  color: Colors.black45,
                ),
              ),
              Image.network(
                'https://c.tenor.com/YJ7bnvIFD-8AAAAC/concierto-gabo.gif',
                width: 400,
                height: 300,
              ),
              const SizedBox(
                width: 400,
                child: Text(
                  'Rellene el siguiente formulario con sus datos de e-mail para poder contactarle, en breve nos pondremos en contacto para proceder a la compra de las entradas para el concierto que haya elegido.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
