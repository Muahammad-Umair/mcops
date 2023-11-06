import 'package:flutter/material.dart';
import 'package:mcops/main.dart';

class appnoti extends StatefulWidget {
  const appnoti({super.key});

  @override
  State<appnoti> createState() => _appnotiState();
}

class _appnotiState extends State<appnoti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: InkWell(
          onTap: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ));
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.green)),
      title: Text(
        "App Notifications",
        style: TextStyle(color: Colors.green),
      ),
      actions: const [
        Icon(
          Icons.more_vert_sharp,
          color: Colors.green,
        )
      ],
    ));
  }
}
