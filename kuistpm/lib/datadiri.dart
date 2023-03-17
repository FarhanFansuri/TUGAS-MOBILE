import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Datadiri extends StatelessWidget {
  const Datadiri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Data Diri",
        textAlign: TextAlign.center,
      )),
      body: Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.all(20.0),
          child: Card(
            child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Image(
                      image: AssetImage("assets/profil.jpeg"),
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text("Nama : Mochammad Farhan Fansuri"),
                    Text("NIM : 123200127"),
                    Text("Kelas : IF-C"),
                    Text("Hobi : Bermain Musik"),
                  ],
                )),
          )),
    );
  }
}
