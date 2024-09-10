import 'package:flutter/material.dart';
import 'package:rev_digitales_app/bodegas/presentation/pages/bodegas_page.dart';
import 'package:rev_digitales_app/home/presentation/pages/home_page.dart';
import 'package:rev_digitales_app/compras/presentation/pages/compras_page.dart';
import 'package:rev_digitales_app/informes/presentation/pages/informes_page.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {

  final List<Widget> _screens = [
    Home(),
    Compras(),
    Bodegas(),
    Informes(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home)),
        BottomNavigationBarItem(
            label: 'Compras',
            icon: Icon(Icons.shopping_cart)),
        BottomNavigationBarItem(
          label: 'Bodegas',
          icon: Icon(Icons.inventory)),
        BottomNavigationBarItem(
          label: 'Informes',
          icon: Icon(Icons.poll)),
      ],
      onTap: (index) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => _screens[index]));
      } ,
    );
  }
}
