import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Layang extends StatefulWidget {
  const Layang({super.key});

  @override
  State<Layang> createState() => _LayangState();
}

class _LayangState extends State<Layang> {
  TextEditingController diagonal1 = TextEditingController();
  TextEditingController diagonal2 = TextEditingController();
  String hasil = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Layang-Layang"),
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
                  labelText: 'Diagonal 1 atau Sisi 1',
                ),
                controller: diagonal1,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Diagonal 2 atau Sisi 2',
                ),
                controller: diagonal2,
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
                      hasil = "${diagonal1.text} ${diagonal2.text}";
                    });
                    if (int.tryParse(diagonal1.text) is int &&
                        int.tryParse(diagonal2.text) is int) {
                      int nilai1 = int.parse(diagonal1.text);
                      int nilai2 = int.parse(diagonal2.text);
                      setState(() {
                        hasil = (nilai1 * nilai2 / 2).toString();
                      });
                    } else if (double.tryParse(diagonal1.text) is double ||
                        double.tryParse(diagonal2.text) is double) {
                      double nilai1 = double.parse(diagonal1.text);
                      double nilai2 = double.parse(diagonal2.text);
                      setState(() {
                        hasil = (nilai1 * nilai2 / 2).toString();
                      });
                    }
                  },
                  child: const Text("Hitung Luas")),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (int.tryParse(diagonal1.text) is int &&
                        int.tryParse(diagonal2.text) is int) {
                      setState(() {
                        hasil = ((int.parse(diagonal1.text) +
                                    int.parse(diagonal2.text)) *
                                2)
                            .toString();
                      });
                    } else if (double.tryParse(diagonal1.text) is double ||
                        double.tryParse(diagonal2.text) is double) {
                      setState(() {
                        hasil = ((double.parse(diagonal1.text) +
                                    double.parse(diagonal2.text)) *
                                2)
                            .toString();
                      });
                    }
                  },
                  child: const Text("Hitung Keliling")),
            ],
          ),
        ));
  }
}
