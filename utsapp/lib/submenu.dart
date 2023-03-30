import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubMenu extends StatelessWidget {
  const SubMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Submenu"),
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
                         }, child: const Text("lala"),),
                    ],
                ),
            ),
        ) ,
    );
  }
}