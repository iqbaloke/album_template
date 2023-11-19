// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ShowFileImage extends StatefulWidget {
  const ShowFileImage({super.key});

  @override
  State<ShowFileImage> createState() => _ShowFileImageState();
}

class _ShowFileImageState extends State<ShowFileImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.1,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://i.dailymail.co.uk/i/pix/2016/10/11/10/394D0FF300000578-3832100-image-m-5_1476176846536.jpg"))
        ),
      ),
    );
  }
}