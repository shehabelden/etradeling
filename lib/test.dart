import 'dart:io';
import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:platform_file/platform_file.dart';
import 'package:firebase_auth/firebase_auth.dart';

Uint8List webImage = Uint8List(8);

class x extends StatefulWidget {
  const x({super.key});

  @override
  State<x> createState() => _xState();
}

class _xState extends State<x> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () async {
          final imagePiker = ImagePicker();
          XFile? image =
              await imagePiker.pickImage(source: ImageSource.gallery);
          if (image != null) {
            var f = await image.readAsBytes();
            setState(() {
              webImage = f;
            });
            await FirebaseStorage.instance.ref().child("a111").putData(f);
          }
        },
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
