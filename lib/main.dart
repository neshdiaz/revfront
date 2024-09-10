import 'package:flutter/material.dart';
import 'package:rev_digitales_app/bodegas/presentation/pages/bodegas_page.dart';
import 'package:rev_digitales_app/home/presentation/pages/home_page.dart';
import 'package:rev_digitales_app/auth/presentation/pages/login_page.dart';
import 'package:rev_digitales_app/compras/presentation/pages/compras_page.dart';
import 'package:rev_digitales_app/informes/presentation/pages/informes_page.dart';

void main() {
  runApp(const RdApp());
}

class RdApp extends StatefulWidget {
  const RdApp({super.key});

  @override
  State<RdApp> createState() => _RdAppState();
}

class _RdAppState extends State<RdApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/home': (context) => Home(),
        '/compras': (context) => Compras(),
        '/bodegas': (context) => Bodegas(),
        '/informes': (context) => Informes(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),
    );
  }
}
