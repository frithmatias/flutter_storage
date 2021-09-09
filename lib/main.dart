import 'package:flutter/material.dart';
import 'package:storage/src/pages/home_page.dart';
import 'package:storage/src/pages/settings_page.dart';
import 'package:storage/src/share_prefs/preferencias_usuario.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final prefs = new PreferenciasUsuario();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Preferencias en Storage',
        initialRoute: prefs.ultimaPagina,
        routes: {
          HomePage.routeName: (BuildContext context) => HomePage(),
          SettingsPage.routeName: (BuildContext context) => SettingsPage(),
        });
  }
}
