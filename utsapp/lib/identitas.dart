import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Identity extends StatelessWidget {
  const Identity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blueGrey[400],
      ),
      body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                  child: CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/profile.jpg'),
              )),
              Card(
                child: SizedBox(
                  height: 150.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Nama : Mochammad Farhan Fansuri"),
                            Text("NIM : 123200127"),
                            Text("Kelas : IF-C"),
                            Text("Tempat/Tanggal Lahir : Malang/13 April 2002"),
                            Text("Harapan dan Cita-cita : Ingin menjadi musisi")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
