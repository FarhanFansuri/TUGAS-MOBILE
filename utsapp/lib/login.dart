import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Menu"),
        ),
        body: Container(
            margin: const EdgeInsets.all(30.0),
            child: Center(
                child: Column(
                    children: [
                        const SizedBox(height: 30.0,),
                        TextField(
                            obscureText: false,
                            decoration: const  InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Username',
                         ),
                         controller: username,
                        ),
                        const SizedBox(height: 30.0,),
                        TextField(
                            obscureText: true,
                            decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            ),
                            controller: password,
                        ),   const SizedBox(height: 30.0,),
                        ElevatedButton(onPressed: (){
                            Navigator.pushNamed(context, '/menu');
                        }, child: const Text("Login"))
                    ],
                ),
            ),
        ) ,
    );
  }
}