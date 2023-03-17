import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Segitiga extends StatefulWidget {
  const Segitiga({super.key});

  @override
  State<Segitiga> createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  TextEditingController alas = TextEditingController();
  TextEditingController tinggi = TextEditingController();
  TextEditingController sisi1 = TextEditingController();
  TextEditingController sisi2 = TextEditingController();
  TextEditingController sisi3 = TextEditingController();
  String hasil = "";
  String hasil2 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Segitiga"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Alas',
                ),
                controller: alas,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tinggi',
                ),
                controller: tinggi,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text("Hasil : $hasil"),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      hasil = "${alas.text} ${tinggi.text}";
                    });
                    if (int.tryParse(alas.text) is int &&
                        int.tryParse(tinggi.text) is int) {
                      int nilai1 = int.parse(alas.text);
                      int nilai2 = int.parse(tinggi.text);
                      setState(() {
                        hasil = (nilai1 * nilai2 / 2).toString();
                      });
                    } else if (double.tryParse(alas.text) is double ||
                        double.tryParse(tinggi.text) is double) {
                      double nilai1 = double.parse(alas.text);
                      double nilai2 = double.parse(tinggi.text);
                      setState(() {
                        hasil = (nilai1 * nilai2 / 2).toString();
                      });
                    }
                  },
                  child: const Text("Hitung Luas")),
              const SizedBox(
                height: 10.0,
              ),
              const Divider(thickness: 10.0),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Sisi 1',
                ),
                controller: sisi1,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Sisi 2',
                ),
                controller: sisi2,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Sisi 3',
                ),
                controller: sisi3,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text("hasil : $hasil2"),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (double.tryParse(sisi1.text) is double ||
                          double.tryParse(sisi2.text) is double ||
                          double.tryParse(sisi3.text) is double) {
                        hasil2 = (double.parse(sisi1.text) +
                                double.parse(sisi2.text) +
                                double.parse(sisi3.text))
                            .toString();
                      } else {
                        hasil2 = (int.parse(sisi1.text) +
                                int.parse(sisi2.text) +
                                int.parse(sisi3.text))
                            .toString();
                      }
                    });
                  },
                  child: const Text("Hitung Keliling"))
            ],
          ),
        ));
  }
}
