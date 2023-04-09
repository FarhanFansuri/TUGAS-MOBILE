import 'package:flutter/material.dart';
import 'package:project02/favorite.dart';
import 'package:project02/sites.dart';

void main() {
  runApp(MaterialApp(
    routes: {'/favorite': (context) => Favorite()},
    home: const Sites(),
  ));
}
