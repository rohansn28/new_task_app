import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:new_task/model/applink.dart';
import 'package:new_task/variables/local_variables.dart';
import 'package:new_task/variables/modal_variable.dart';

Future<List<Applink>> fetchPlayData(String endpoint) async {
  var url = Uri.parse("$baseUrl$basePostFix$endpoint");

  var response = await http.get(url);
  List<Applink> applinks = applinkFromJson(response.body);

  return applinks;
}

Future<List<Applink>> fetchTasklineData(String endpoint) async {
  var url = Uri.parse("$baseUrl$basePostFix$endpoint");

  var response = await http.get(url);
  List<Applink> applinks = applinkFromJson(response.body);

  return applinks;
}

Future<List<Applink>> fetchBonusData(String endpoint) async {
  var url = Uri.parse("$baseUrl$basePostFix$endpoint");

  var response = await http.get(url);
  List<Applink> applinks = applinkFromJson(response.body);

  return applinks;
}

Future<List<Applink>> fetchGameData(String endpoint) async {
  var url = Uri.parse("$baseUrl$basePostFix$endpoint");

  var response = await http.get(url);
  List<Applink> applinks = applinkFromJson(response.body);

  return applinks;
}

Future<String> fetchButtonLinks(String endpoint) async {
  var url = Uri.parse("$baseUrl$basePostFix$endpoint");

  var response = await http.get(url);
  otherLinksModel =
      OtherLinksModel.fromJson(jsonDecode(response.body.toString()));

  return response.body;
}
