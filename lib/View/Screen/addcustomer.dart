import 'package:flutter/material.dart';

import '../../main.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({super.key});

  @override
  State<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  late double h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyApp(),
                  ));
            },
            child: const Icon(Icons.arrow_back_ios_new_outlined,
                color: Colors.green)),
        title:
            const Text("Add Customer", style: TextStyle(color: Colors.green)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: h * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter User Name',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter Email Id',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                maxLines: 1,
                decoration: const InputDecoration(
                  labelText: 'Enter Mobile Number',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                maxLines: 1,
                decoration: const InputDecoration(
                  labelText: 'Enter Mobile Number',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Colors.black,
              ),
              height: h * 0.05,
              width: w * 0.4,
              child: const Center(
                  child: Text(
                "Scan",
                style: TextStyle(fontSize: 17, color: Colors.white),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                maxLines: 1,
                decoration: const InputDecoration(
                  labelText: 'Enter Mobile Number',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Colors.black,
              ),
              height: h * 0.05,
              width: w * 0.4,
              child: const Center(
                  child: Text(
                "Scan",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.black,
              ),
              height: h * 0.05,
              width: w * 0.4,
              child: const Center(
                  child: Text(
                "Submit",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            )
          ],
        ),
      ),
    );
  }
}
