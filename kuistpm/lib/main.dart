import 'package:flutter/material.dart';
import 'package:kuistpm/datadiri.dart';
import 'package:kuistpm/layang.dart';
import 'package:kuistpm/segitiga.dart';

import 'menu.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/segitiga': (context) => const Segitiga(),
      '/layang': (context) => const Layang(),
      '/datadiri': (context) => const Datadiri(),
    },
    home: const Menu(),
  ));
}
