import 'dart:convert';

import 'package:content_first/models/shared_with_me_model.dart';
import 'package:flutter/services.dart';

Future<List<SharedWithMeModel>> fetchSharedWithMe() async{
  final response = await rootBundle.loadString('data_json/share_with_me.json');

  List jsonResponse = json.decode(response)["data"];
  return jsonResponse.map((e) => SharedWithMeModel.fromJson(e)).toList();
}