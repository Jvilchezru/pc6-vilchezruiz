// ignore_for_file: deprecated_member_use
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
        title: const Text('Lista de canciones'),
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
      backgroundColor: const Color.fromARGB(255, 179, 205, 252),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        backgroundColor: Colors.lightBlue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Principal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Canciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.app_registration),
            label: 'Reservas',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.amber[800],
      ),
      body: Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album, size: 35),
                title: Text('As It Was'),
                subtitle: Text('Music by Harry Styles.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Descargar'),
                    onPressed: () {/* ... */},
                  ),
                  TextButton(
                    child: const Text('Escuchar'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
              const ListTile(
                leading: Icon(Icons.album, size: 35),
                title: Text('Moscow Mule'),
                subtitle: Text('Music by Bad Bunny.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Descargar'),
                    onPressed: () {/* ... */},
                  ),
                  TextButton(
                    child: const Text('Escuchar'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
              const ListTile(
                leading: Icon(Icons.album, size: 35),
                title: Text('Father Time (feat. Sampha)'),
                subtitle: Text('Music by Kendrick Lamar, Sampha.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Descargar'),
                    onPressed: () {/* ... */},
                  ),
                  TextButton(
                    child: const Text('Escuchar'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
              const ListTile(
                leading: Icon(Icons.album, size: 35),
                title: Text('Abput Danm Time'),
                subtitle: Text('Music by Lizzo.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Descargar'),
                    onPressed: () {/* ... */},
                  ),
                  TextButton(
                    child: const Text('Escuchar'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
              const ListTile(
                leading: Icon(Icons.album, size: 35),
                title: Text('Una Noche en Medellín'),
                subtitle: Text('Music by Cris Mj.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Descargar'),
                    onPressed: () {/* ... */},
                  ),
                  TextButton(
                    child: const Text('Escuchar'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
