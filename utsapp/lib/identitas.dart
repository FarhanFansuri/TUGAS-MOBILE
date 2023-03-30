import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Identity extends StatelessWidget {
  const Identity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      

      body: Container( 
        padding: const EdgeInsets.all(20.0),
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: SizedBox(
              height: 150.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children:const  [
                        Text("Nama : Mochammad Farhan Fansuri"),
                        Text("NIM : 123200127"),
                        Text("Kelas : IF-C"),
                        Text("Tempat/TanggalLAhir : Malang/13 April 2002"),
                        Text("Harapan dan Cita-cita : Ingin menjadi musisi")
                      ],
                    ),
                  ),
                  const Image(image: AssetImage('assets/profile.jpg'),height: 100.0,)
                  
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}