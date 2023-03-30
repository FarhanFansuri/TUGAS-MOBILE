import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Login"),
        ),
        body: Container(
            margin: const EdgeInsets.all(30.0),
            child: Center(
                child: Column(
                    children: [
                        const SizedBox(height: 30.0,),
                          ElevatedButton(onPressed: (){
                            Navigator.pushNamed(context, '/name');
                        }, child: const Text("Identitas")),
                        const SizedBox(height: 30.0,),
                         ElevatedButton(onPressed: (){
                            Navigator.pushNamed(context, '/name');
                        }, child: const Text("Kalender")),
                        const SizedBox(height: 30.0,),
                        ElevatedButton(onPressed: (){
                            Navigator.pushNamed(context, '/name');
                        }, child: const Text("Bangun Datar"))
                    ],
                ),
            ),
        ) ,
    );
  }
}