import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rev_digitales_app/bodegas/presentation/providers/bodega_provider.dart';
import 'package:rev_digitales_app/bodegas/presentation/pages/bodega_page.dart';
import 'package:rev_digitales_app/home/presentation/pages/home_page.dart';
import 'package:rev_digitales_app/auth/presentation/pages/login_page.dart';
import 'package:rev_digitales_app/compras/presentation/pages/compras_page.dart';
import 'package:rev_digitales_app/informes/presentation/pages/informes_page.dart';

void main() {
  runApp(RdApp());
}

class RdApp extends StatelessWidget {
  const RdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (_) => BodegaProvider()..fetchBodegas()),
        ],
        child: MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => Login(),
            '/home': (context) => Home(),
            '/compras': (context) => Compras(),
            '/bodegas': (context) => BodegaListPage(),
            '/informes': (context) => Informes(),
          },
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
        ));
  }
}
