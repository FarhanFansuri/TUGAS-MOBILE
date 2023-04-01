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
  num pi = 3.14;
  num? hasil;
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
                  labelText: 'Tinggi Tabung',
                ),
                controller: tinggi),
            const SizedBox(
              height: 30.0,
            ),
            TextField(
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Jari-jari',
                ),
                controller: jarijari),
            const SizedBox(
              height: 30.0,
            ),
            Text('Hasil : ${hasil == null ? '' : hasil.toString()}'),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey[400],
                ),
                onPressed: () {
                  setState(() {
                    hasil = 2 * pi * num.parse(jarijari.text);
                  });
                },
                child: const Text("Menghitung Keliling alas")),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey[400],
                ),
                onPressed: () {
                  setState(() {
                    hasil = pi *
                            num.parse(jarijari.text) *
                            num.parse(jarijari.text) +
                        2 *
                            pi *
                            num.parse(jarijari.text) *
                            num.parse(tinggi.text);
                  });
                },
                child: const Text("Menghitung Luas"))
          ],
        ),
      ),
    );
  }
}
