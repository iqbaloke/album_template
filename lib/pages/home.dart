// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:content_first/components/mycolor.dart';
import 'package:content_first/components/mytext.dart';
import 'package:content_first/models/my_album_model.dart';
import 'package:content_first/models/shared_with_me_model.dart';
import 'package:content_first/pages/albums/my_album.dart';
import 'package:content_first/pages/albums/shared_with_me.dart';
import 'package:content_first/services/my_album_service.dart';
import 'package:content_first/services/shared_with_me.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    fetchMyAlbum();
    fetchSharedWithMe();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.1,
        title: const H2(
          fontWeight: FontWeight.w600,
          title: "Photo Albums",
          color: MyColor.dark50,
        ),
        centerTitle: false,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.bell,
                    color: Color.fromARGB(255, 61, 61, 61)),
              ],
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Row(
              children: [
                H3(
                  title: "Shared With Me",
                  color: MyColor.dark50,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),

          FutureBuilder(
            future: fetchMyAlbum(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              List<MyAlbumModel>? data = snapshot.data;
              if (snapshot.data == null) {
                return CircularProgressIndicator();
              } else {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: MyAlbumFetch(itemWidth: itemWidth, data: data),
                );
              }
            },
          ),
          // MyAlbum(),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    H3(
                      title: "Shared With Me",
                      color: MyColor.dark50,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                FutureBuilder(
                  future: fetchSharedWithMe(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    List<SharedWithMeModel>? data = snapshot.data;
                    if (snapshot.data == null) {
                      return CircularProgressIndicator();
                    } else {
                      return SharedWithMe(data: data);
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
    );
  }
}
