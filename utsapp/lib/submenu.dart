import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubMenu extends StatelessWidget {
  const SubMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Submenu"),
        backgroundColor: Colors.blueGrey[300],
      ),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Card(
                color: Colors.blueGrey[100],
                child: SizedBox(
                    height: 60.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/trapesium');
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
                              "Trapesium",
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
                        Navigator.pushNamed(context, '/tabung');
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
                              "Tabung",
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
