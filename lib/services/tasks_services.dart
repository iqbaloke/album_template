import 'dart:convert';

import 'package:content_first/models/tasks_model.dart';
import 'package:flutter/services.dart';

Future<List<TasksModel>> fetchTasks() async{
  final response = await rootBundle.loadString('data_json/date.json');

  List jsonResponse = json.decode(response)["data"];
  return jsonResponse.map((e) => TasksModel.fromJson(e)).toList();
}