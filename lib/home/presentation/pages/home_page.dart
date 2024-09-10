import 'package:flutter/material.dart';
import '../../../shared/widgets/navigation_bar.dart';

import 'package:badges/badges.dart' as badges;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
          color: const Color.fromARGB(255, 226, 229, 232),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: badges.Badge(
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.green,
                        ),
                        badgeContent: Text('0',
                            style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: Icon(Icons.live_tv),
                      ),
                      title: Text('Ultimas adquiridas'),
                      subtitle: Text(
                        'Estas son las últimas plataformas compradas a proveedores',
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                  )],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: badges.Badge(
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.green,
                        ),
                        badgeContent: Text('0',
                            style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: Icon(Icons.live_tv),
                      ),
                      title: Text('Pendientes de Venta'),
                      subtitle: Text(
                        'Estas plataformas continúan en la bodega principal',
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                  )],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: badges.Badge(
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.yellow,
                        ),
                        badgeContent: Text('10',
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0,
                          ),
                        ),
                        child: Icon(Icons.live_tv),
                      ),
                      title: Text('Proximas a vencer'),
                      subtitle: Text(
                        'Estas plataformas pueden perderse debido a la fecha de vencimiento',
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                  )],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: badges.Badge(
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.red,
                        ),
                        badgeContent: Text('25',
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0,
                          ),
                        ),
                        child: Icon(Icons.live_tv),
                      ),
                      title: Text('Pendientes de pago'),
                      subtitle: Text(
                        'Estas plataformas aun no se han cancelado al proveedor',
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                  )],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: badges.Badge(
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.red,
                        ),
                        badgeContent:
                          Text('30',
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0,
                          ),
                        ),
                          child: Icon(Icons.live_tv),
                      ),
                      title: Text('Pendientes de cobro'),
                      subtitle: Text(
                        'Estas plataformas no han sido pagadas por los agentes',
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                  )],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyNavigationBar()
    );
  }
}
