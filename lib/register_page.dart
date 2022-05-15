import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro de reserva',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 205, 222, 255),
        appBar: AppBar(
          title: const Text('Registro de reserva'),
        ),
        body: RegisterPage(),
      ),
    );
  }
}

// Crea un Widget Form
class RegisterPage extends StatefulWidget {
  @override
  RegisterFormState createState() {
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Crea un widget Form usando el _formKey que creamos anteriormente
    return Form(
      key: _formKey,
      child: Center(
        child: SizedBox(
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nombre'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor ingrese su nombre';
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  hintText: 'example@gmail.com',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor ingrese su e-mail';
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Número de entradas',
                  hintText: '0',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor ingrese la cant. de entradas';
                  }
                },
              ),
              TextFormField(
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: 'Comentario',
                  hintText: '(opcional)',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    // devolverá true si el formulario es válido, o falso si
                    // el formulario no es válido.
                    if (_formKey.currentState!.validate()) {
                      // Si el formulario es válido, queremos mostrar un Snackbar
                      Scaffold.of(context).showSnackBar(
                          const SnackBar(content: Text('Registro exitoso')));
                    }
                  },
                  child: const Text(
                    'Registrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
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
