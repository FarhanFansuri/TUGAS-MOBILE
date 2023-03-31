import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Tabung extends StatefulWidget {
  const Tabung({super.key});

  @override
  State<Tabung> createState() => _TabungState();
}

class _TabungState extends State<Tabung> {
   TextEditingController tinggi = TextEditingController();
    TextEditingController jarijari = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tabung"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:  [
            TextField(
              obscureText: false,
                            decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Tinggi Tabung',
            ),
            controller: tinggi),
            const SizedBox(height: 30.0,),
            TextField(
              obscureText: false,
                            decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Jari-jari',
            ),
            controller: jarijari),
            const SizedBox(height: 30.0,),
            ElevatedButton(onPressed: (){}, child: const Text("Menghitung Keliling")),
            const SizedBox(height: 30.0,),
            ElevatedButton(onPressed: (){}, child: const Text("Menghitung Luas"))
          ],
        ),
      ),
    );
  }
}