import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Menu",
                style: TextStyle(fontSize: 50.0, fontFamily: 'Alkatra'),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Card(
                color: Colors.blueGrey[100],
                child: SizedBox(
                    height: 60.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.account_circle_rounded,
                            size: 30.0,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Center(
                            child: Text(
                              "Profile",
                            ),
                          )
                        ],
                      ),
                    )),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Card(
                color: Colors.blueGrey[400],
                child: SizedBox(
                    height: 60.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/kalender');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.calendar_month_outlined,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Center(
                            child: Text(
                              "Kalender",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Card(
                color: Colors.blueGrey[100],
                child: SizedBox(
                    height: 60.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/submenu');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.shape_line_sharp,
                            size: 30.0,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Center(
                            child: Text(
                              "Bangun datar",
                            ),
                          )
                        ],
                      ),
                    )),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Card(
                color: Colors.blueGrey[400],
                child: SizedBox(
                    height: 60.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.logout,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Center(
                            child: Text(
                              "Logout",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
