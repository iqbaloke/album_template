// ignore_for_file: prefer_const_constructors

import 'package:content_first/components/mycolor.dart';
import 'package:content_first/components/mytext.dart';
import 'package:content_first/models/my_album_model.dart';
import 'package:content_first/pages/albums/detail/my_album_detail.dart';
import 'package:flutter/material.dart';

class MyAlbumFetch extends StatelessWidget {
  const MyAlbumFetch({
    super.key,
    required this.itemWidth,
    required this.data,
  });

  final double itemWidth;
  final List<MyAlbumModel>? data;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: (itemWidth / 350),
      ),
      shrinkWrap: true,
      itemCount: data!.length,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyAlbumDetail(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: MyColor.light,
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                        data![index].image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              H4(
                title: data![index].title,
                color: MyColor.dark50,
                fontWeight: FontWeight.w600,
              ),
              BodyText(
                title: data![index].jumlah.toString(),
                color: MyColor.dark30,
                align: TextAlign.start,
                // fontWeight: FontWeight.w500,
              ),
            ],
          ),
        );
      },
    );
  }
}
