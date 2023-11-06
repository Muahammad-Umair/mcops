import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mcops/main.dart';

class send extends StatefulWidget {
  const send({super.key});

  @override
  State<send> createState() => _sendState();
}

class _sendState extends State<send> {
  File? pickedImage;
  bool isPicked = false;
  late double h, w;
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
            child: const Icon(Icons.arrow_back_ios, color: Colors.green)),
        title:
            const Text("Image Picker", style: TextStyle(color: Colors.green)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: isPicked
                    ? Image.file(
                        pickedImage! as File,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width * (4 / 3),
                      )
                    : Container(
                        color: Colors.blueGrey[100],
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width * (4 / 3),
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(48.0),
              child: ElevatedButton(
                onPressed: () async {
                  final ImagePicker _picker = ImagePicker();
                  final XFile? image =
                      await _picker.pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    pickedImage = File(image.path);
                    setState(() {
                      isPicked = true;
                    });
                  }
                },
                child: const Text("Pick Image",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
