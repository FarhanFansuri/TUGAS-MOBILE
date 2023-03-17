import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/layang');
                  },
                  child: const Text("Layang -Layang")),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/segitiga');
                  },
                  child: const Text("Segitiga")),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/datadiri');
                  },
                  child: const Text("Data Diri"))
            ],
          )),
    );
  }
}
