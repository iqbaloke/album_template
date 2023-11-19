// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:content_first/components/mycolor.dart';
import 'package:content_first/components/mytext.dart';
import 'package:content_first/models/shared_with_me_model.dart';
import 'package:content_first/pages/albums/detail/my_album_detail.dart';
import 'package:flutter/material.dart';

class SharedWithMe extends StatelessWidget {
  const SharedWithMe({
    super.key,
    required this.data,
  });

  final List<SharedWithMeModel>? data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data!.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyAlbumDetail(sharedWithMeModel :data?[index]),
                    ),
                  );
                },
                child: Container(
                  width:
                      MediaQuery.of(context).size.width / 5,
                  height:
                      MediaQuery.of(context).size.width / 5,
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
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  H4(
                    title: data![index].title,
                    color: MyColor.dark50,
                  ),
                  Row(
                    children: [
                      H4(
                        fontWeight: FontWeight.w500,
                        title: "Total foto :",
                        color: MyColor.dark50,
                      ),
                      H4(
                        fontWeight: FontWeight.w500,
                        title: " ${data![index].jumlah}",
                        color: MyColor.dark50,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      H4(
                        fontWeight: FontWeight.w500,
                        title: "Peserta :",
                        color: MyColor.dark50,
                      ),
                      H4(
                        fontWeight: FontWeight.w500,
                        title: " ${data![index].peserta}",
                        color: MyColor.dark50,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}