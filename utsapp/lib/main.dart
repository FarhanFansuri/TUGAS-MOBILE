import 'package:flutter/material.dart';
import 'package:utsapp/identitas.dart';
import 'package:utsapp/login.dart';
import 'package:utsapp/tabung.dart';

import 'menu.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/menu': (context)=>const Menu(),
    },
    home:const  Tabung(),
  ));
}

