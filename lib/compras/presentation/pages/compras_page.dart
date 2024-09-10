import 'package:flutter/material.dart';
import 'package:rev_digitales_app/shared/widgets/navigation_bar.dart';

class Compras extends StatefulWidget {
  const Compras({super.key});

  @override
  State<Compras> createState() => _ComprasState();
}

class _ComprasState extends State<Compras> {

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
        title: const Text('Compras'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Acción del botón
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              print('Clic en opciones de usuario');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Utiliza el boton del simbolo + para cargar el archivo plano de la compra'),
              ),
              LinearProgressIndicator(
                value: 0.1,
                backgroundColor: Colors.grey, // Color de fondo
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
              Text('Progreso...'),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: const Icon(Icons.add),
        onPressed: () {
          // action on button press
        },
      ),
      bottomNavigationBar: MyNavigationBar()
    );
  }
}