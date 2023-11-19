import 'dart:convert';

import 'package:content_first/models/my_album_model.dart';
import 'package:flutter/services.dart';

Future<List<MyAlbumModel>> fetchMyAlbum() async {
  final response = await rootBundle.loadString('data_json/my_album.json');

  List jsonResponse = json.decode(response)["data"];
  return jsonResponse.map((e) => MyAlbumModel.fromJson(e)).toList();
}
