import 'dart:convert';

import 'package:content_first/models/list_album_model.dart';
import 'package:flutter/services.dart';

Future<List<ListAbumModel>> fetchListAlbum() async {
  final response = await rootBundle.loadString('data_json/list_album.json');

  List jsonResponse = json.decode(response)["data"];
  return jsonResponse.map((e) => ListAbumModel.fromJson(e)).toList();
}
