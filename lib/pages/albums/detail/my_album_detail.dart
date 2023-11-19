// ignore_for_file: prefer_const_constructors

import 'package:content_first/components/mycolor.dart';
import 'package:content_first/components/mytext.dart';
import 'package:content_first/models/shared_with_me_model.dart';
import 'package:content_first/pages/albums/detail/show_file.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAlbumDetail extends StatefulWidget {
  final SharedWithMeModel? sharedWithMeModel;
  const MyAlbumDetail({super.key, this.sharedWithMeModel});

  @override
  State<MyAlbumDetail> createState() => _MyAlbumDetailState();
}

class _MyAlbumDetailState extends State<MyAlbumDetail> {
  @override
  Widget build(BuildContext context) {
    // print(widget.sharedWithMeModel!.title);
    
    // var data = widget.sharedWithMeModel;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.1,
        title: const H2(
          fontWeight: FontWeight.w600,
          title: "Detail Album",
          color: MyColor.dark50,
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.bell,
                  color: Color.fromARGB(
                    255,
                    61,
                    61,
                    61,
                  ),
                ),
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        (MaterialPageRoute(
                          builder: (context) => ShowFileImage(),
                        )),
                      );
                    },
                    child: Container(
                      height: 120,
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: MyColor.light,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://i.dailymail.co.uk/i/pix/2016/03/31/18/32B641DE00000578-0-image-a-35_1459443980570.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: MyColor.light,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.dailymail.co.uk/i/pix/2016/10/11/10/394D0FF300000578-3832100-image-m-5_1476176846536.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: MyColor.light,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://img.freepik.com/premium-photo/summer-holiday-vacation-travel-concept-with-young-group-people-friends-jumping-happiness_425263-3756.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: MyColor.light,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://img.freepik.com/premium-photo/four-tourist-young-people-caucasian-boy-girls-trendy-look-colorful-lifestyle-smile-enjoy-summer-holiday-vacation-freedom-beach-with-blue-sky-ocean_425263-1021.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: MyColor.light,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://img.freepik.com/premium-photo/cheerful-group-people-boys-girls-have-fun-together-beach-during-summer-holiday-vacation_425263-577.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: MyColor.light,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://s3.envato.com/files/184889571/0Q7A7493.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
