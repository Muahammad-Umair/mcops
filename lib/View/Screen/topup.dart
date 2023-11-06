import 'package:flutter/material.dart';

class topup extends StatefulWidget {
  const topup({super.key});

  @override
  State<topup> createState() => _topupState();
}

class _topupState extends State<topup> {
  late double h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title:
            const Text("Top Up History", style: TextStyle(color: Colors.green)),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Transaction No:",
                              style: TextStyle(color: Colors.black)),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          const Text("From:",
                              style: TextStyle(color: Colors.black)),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          const Text("To:",
                              style: TextStyle(color: Colors.black)),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          const Text("Points:",
                              style: TextStyle(color: Colors.black)),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          const Text("Date:",
                              style: TextStyle(color: Colors.black)),
                          SizedBox(
                            height: h * 0.02,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: w * 0.2,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("169304560 ",
                              style: TextStyle(color: Colors.black)),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          const Text("Rom Kumar",
                              style: TextStyle(color: Colors.black)),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          const Text("ABC",
                              style: TextStyle(color: Colors.black)),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          const Text("6 Dr",
                              style: TextStyle(color: Colors.black)),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          const Text("20-06-2021",
                              style: TextStyle(color: Colors.black)),
                          SizedBox(
                            height: h * 0.02,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
