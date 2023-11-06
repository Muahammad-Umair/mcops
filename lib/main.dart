import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mcops/View/Auth/signIn_screen.dart';
import 'package:mcops/View/Screen/privacy.dart';
import 'package:mcops/View/Screen/romal.dart';
import 'package:mcops/View/Screen/send.dart';
import 'package:mcops/View/Screen/topup.dart';

import 'View/Screen/addcustomer.dart';
import 'View/Screen/appnoti.dart';
import 'View/Screen/customerlist.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List Card = [
    "assets/img/download.jpg",
    "assets/img/download (1).jpg",
    "assets/img/download (4).jpg",
    "assets/img/images.jpg",
  ];

  late double h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Lockit Up",
            style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w700,
                fontSize: 22)),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const appnoti(),
                    ));
              },
              child: const Icon(Icons.notifications,
                  size: 30, color: Colors.green)),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.notification_important,
              size: 30, color: Colors.green),
          const SizedBox(
            width: 7,
          ),
          const Icon(Icons.qr_code_scanner_sharp,
              size: 30, color: Colors.green),
          const SizedBox(
            width: 7,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                height: h * 0.30,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(microseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
              ),
              itemCount: Card.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  width: w,
                  margin: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(Card[index])),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: h * 0.14,
              width: w,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: h * 0.12,
                    width: w * 0.26,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Balance",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: h * 0.0,
                        ),
                        const Text(
                          "123",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const customerlist(),
                          ));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: h * 0.12,
                      width: w * 0.26,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Inactive",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: h * 0.0,
                          ),
                          const Text(
                            "11",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const customerlist(),
                          ));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: h * 0.12,
                      width: w * 0.26,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Install",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: h * 0.0,
                          ),
                          const Text(
                            "112",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const customerlist(),
                          ));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: h * 0.12,
                      width: w * 0.26,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Locked",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: h * 0.0,
                          ),
                          const Text(
                            "21",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const customerlist(),
                          ));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: h * 0.12,
                      width: w * 0.26,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Unlocked",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: h * 0.0,
                          ),
                          const Text(
                            "90",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const customerlist(),
                          ));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: h * 0.12,
                      width: w * 0.26,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Deactivated",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: h * 0.0,
                          ),
                          const Text(
                            "8",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const customerlist(),
                          ));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: h * 0.12,
                      width: w * 0.26,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Uninstall",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: h * 0.0,
                          ),
                          const Text(
                            "1",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child: Container(
                  height: h * 0.44,
                  width: w,
                  color: Colors.white,
                  child: GridView.extent(
                    physics: const BouncingScrollPhysics(),
                    primary: false,
                    padding: const EdgeInsets.all(16),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    maxCrossAxisExtent: 200.0,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddCustomer(),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                          ),
                          padding: const EdgeInsets.only(top: 100, left: 5),
                          child: const Text('Add Customer',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const customerlist(),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                          ),
                          padding: const EdgeInsets.only(top: 100, left: 5),
                          child: const Text('Customer List',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const topup(),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                          ),
                          padding: const EdgeInsets.only(top: 100, left: 5),
                          child: const Text('TopUp History',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        padding: const EdgeInsets.only(top: 100, left: 5),
                        child: const Text('Multiple Lock/Unlock',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const send(),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                          ),
                          padding: const EdgeInsets.only(top: 100, left: 5),
                          child: const Text('Send Advertisement',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        padding: const EdgeInsets.only(top: 100, left: 45),
                        child: const Text('Set Mpin',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const romal(),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                          ),
                          padding: const EdgeInsets.only(top: 100, left: 45),
                          child: const Text('Profile',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          const DialogExample();
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.black),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                            ),
                            padding: const EdgeInsets.only(top: 100, left: 45),
                            child: const Padding(
                              padding: EdgeInsets.only(right: 28, bottom: 20),
                              child: DialogExample(),
                            )),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const privacy(),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                          ),
                          padding: const EdgeInsets.only(top: 100, left: 45),
                          child: const Text('Privacy',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        padding: const EdgeInsets.only(top: 100, left: 45),
                        child: const Text('LogOut',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                      ),
                    ],
                  )),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => const AlertDialog(
          title: Text('Choose Support'),
          content: Text('Help'),
        ),
      ),
      child: const Text(
        'Support',
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
    );
  }
}
