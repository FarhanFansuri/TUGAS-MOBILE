import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math';

class Trapesium extends StatefulWidget {
  const Trapesium({super.key});

  @override
  State<Trapesium> createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  TextEditingController tinggi = TextEditingController();
  TextEditingController alas1 = TextEditingController();
  TextEditingController alas2 = TextEditingController();
  num? phitagoras;
  num? hasilkeliling;
  num? hasilluas;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tabung"),
        backgroundColor: Colors.blueGrey[400],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tinggi trapesium',
                ),
                controller: tinggi),
            const SizedBox(
              height: 30.0,
            ),
            TextField(
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Alas atas',
                ),
                controller: alas1),
            const SizedBox(
              height: 30.0,
            ),
            TextField(
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Alas bawah',
                ),
                controller: alas2),
            const SizedBox(
              height: 30.0,
            ),
            Text(
                "keliling :  ${hasilkeliling == null ? '' : hasilkeliling.toString()}"),
            const SizedBox(
              height: 30.0,
            ),
            Text("luas :  ${hasilluas == null ? '' : hasilluas.toString()}"),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey[400],
                ),
                onPressed: () {
                  setState(() {
                    num selisih =
                        (num.parse(alas2.text) - num.parse(alas1.text)) / 2;
                    phitagoras = sqrt(selisih * selisih +
                        num.parse(tinggi.text) * num.parse(tinggi.text));
                    hasilkeliling = 2 * phitagoras! +
                        num.parse(alas2.text) +
                        num.parse(alas1.text);
                  });
                },
                child: const Text("Menghitung Keliling")),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey[400],
                ),
                onPressed: () {
                  setState(() {
                    hasilluas =
                        (num.parse(alas1.text) + num.parse(alas2.text)) *
                            num.parse(tinggi.text) /
                            2;
                  });
                },
                child: const Text("Menghitung Luas"))
          ],
        ),
      ),
    );
  }
}
