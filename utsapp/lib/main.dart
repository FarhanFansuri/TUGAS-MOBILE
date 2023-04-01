import 'package:flutter/material.dart';
import 'package:utsapp/identitas.dart';
import 'package:utsapp/login.dart';
import 'package:utsapp/submenu.dart';
import 'package:utsapp/tabung.dart';
import 'package:utsapp/trapesium.dart';

import 'kalender.dart';
import 'menu.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/menu': (context) => const Menu(),
      '/login': (context) => const Login(),
      '/submenu': (context) => const SubMenu(),
      '/tabung': (context) => const Tabung(),
      '/trapesium': (context) => const Trapesium(),
      '/profile': (context) => const Identity(),
      '/kalender': (context) => const Dateandtime(),
    },
    home: const Login(),
  ));
}
