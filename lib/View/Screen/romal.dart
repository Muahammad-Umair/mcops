import 'package:flutter/material.dart';
import 'package:mcops/main.dart';

class romal extends StatefulWidget {
  const romal({super.key});

  @override
  State<romal> createState() => _romalState();
}

class _romalState extends State<romal> {
  late double h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
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
            child: const Icon(Icons.arrow_back_ios_new, color: Colors.green)),
        title: const Text("Profile", style: TextStyle(color: Colors.green)),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
          ),
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
                        const Text("Full Name:",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        Container(
                          height: h * 0.06,
                          width: w * 0.7,
                          color: Colors.blueGrey[100],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("efg",
                                  style: TextStyle(color: Colors.green)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        const Text("Mobile:",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        Container(
                          height: h * 0.06,
                          width: w * 0.7,
                          color: Colors.blueGrey[100],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("9000564300",
                                  style: TextStyle(color: Colors.green)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        const Text("Email:",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        Container(
                          height: h * 0.06,
                          width: w * 0.7,
                          color: Colors.blueGrey[100],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("efg3@gmail.com",
                                  style: TextStyle(color: Colors.green)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        const Text("Distributor:",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        Container(
                          height: h * 0.06,
                          width: w * 0.7,
                          color: Colors.blueGrey[100],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("romkumar",
                                  style: TextStyle(color: Colors.green)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        const Text("Companty Name:",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        Container(
                          height: h * 0.06,
                          width: w * 0.7,
                          color: Colors.blueGrey[100],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("virat mobile",
                                  style: TextStyle(color: Colors.green)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        const Text("Address:",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        Container(
                          height: h * 0.06,
                          width: w * 0.7,
                          color: Colors.blueGrey[100],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("mota varachha,surat(gujarat)",
                                  style: TextStyle(color: Colors.green)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        const Text("State:",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        Container(
                          height: h * 0.06,
                          width: w * 0.7,
                          color: Colors.blueGrey[100],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Gujarat",
                                  style: TextStyle(color: Colors.green)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        const Text("City:",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        Container(
                          height: h * 0.06,
                          width: w * 0.7,
                          color: Colors.blueGrey[100],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Surat",
                                  style: TextStyle(color: Colors.green)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        const Text("Payment Option:",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        Container(
                          height: h * 0.06,
                          width: w * 0.7,
                          color: Colors.blueGrey[100],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Tao to set or update your payment qr code",
                                  style: TextStyle(color: Colors.green)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        const Text("Retailer Signature:",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        Container(
                          height: h * 0.06,
                          width: w * 0.7,
                          color: Colors.blueGrey[100],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Tap to set or check signature",
                                  style: TextStyle(color: Colors.green)),
                            ],
                          ),
                        ),
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
        ),
      ),
    );
  }
}
