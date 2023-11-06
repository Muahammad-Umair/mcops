import 'package:flutter/material.dart';

import '../../main.dart';

const List<String> list = <String>[
  'All',
  'Install',
  'Uninstall',
  'Inactive',
  'Deactive'
];

class customerlist extends StatefulWidget {
  const customerlist({super.key});

  @override
  State<customerlist> createState() => _customerlistState();
}

late double h, w;

class _customerlistState extends State<customerlist> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
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
            child: const Icon(Icons.arrow_back_ios_new, color: Colors.green)),
        title:
            const Text("Customer List", style: TextStyle(color: Colors.green)),
        actions: const [
          Icon(Icons.filter_alt_rounded, color: Colors.green),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.search, color: Colors.green),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2)),
                hintText: 'Search',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                const Spacer(),
                Container(
                  height: h * 0.08,
                  width: w * 0.26,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1),
                      color: Colors.white),
                  child: const Center(child: Text("Total : 5")),
                ),
                SizedBox(
                  width: w * 0.1,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1),
                      color: Colors.white),
                  child: const DropdownMenuExample(),
                ),
                const Spacer(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: h * 0.290,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("xyz"),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Text("xyz36@gmail.com"),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Text("9999966666"),
                    // SizedBox(height: h * 0.01,),
                    const Row(
                      children: [
                        Text("58357367503572"),
                        Spacer(),
                        Icon(
                          Icons.arrow_right_alt_sharp,
                          size: 35,
                        )
                      ],
                    ),
                    // SizedBox(height: h * 0.01,),
                    const Text("47573285487458375"),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Text("2020-04-13 15:20:36"),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Text("Install")],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Unlocked",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: h * 0.290,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("xyz"),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Text("xyz36@gmail.com"),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Text("981400000"),
                    // SizedBox(height: h * 0.01,),
                    const Row(
                      children: [
                        Text("869485784532"),
                        Spacer(),
                        Icon(
                          Icons.arrow_right_alt_sharp,
                          size: 35,
                        )
                      ],
                    ),
                    // SizedBox(height: h * 0.01,),
                    const Text("1694615376395"),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Text("2020-04-15 19:59:36"),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Text("Install")],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Unlocked",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: h * 0.290,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("xyz"),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Text("xyz36@gmail.com"),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Text("981400000"),
                    // SizedBox(height: h * 0.01,),
                    const Row(
                      children: [
                        Text("867385503572"),
                        Spacer(),
                        Icon(
                          Icons.arrow_right_alt_sharp,
                          size: 35,
                        )
                      ],
                    ),
                    // SizedBox(height: h * 0.01,),
                    const Text("1694615376395"),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Text("2021-09-13 19:59:36"),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Text("Install")],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Unlocked",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
