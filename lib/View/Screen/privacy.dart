import 'package:flutter/material.dart';
import 'package:mcops/main.dart';

class privacy extends StatefulWidget {
  const privacy({super.key});

  @override
  State<privacy> createState() => _privacyState();
}

class _privacyState extends State<privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyApp(),
                  ));
            },
            child: const Icon(Icons.arrow_back_ios_new_outlined,
                color: Colors.black)),
        title: const Text("Support Guidelines",
            style: TextStyle(color: Colors.green)),
      ),
      body: const Center(
        child: Text("Not Found Data", style: TextStyle(fontSize: 23)),
      ),
    );
  }
}
