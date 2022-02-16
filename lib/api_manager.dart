//***this  function to laodingthe data and show***

// ignore_for_file: unnecessary_null_comparison

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app2/class_apis.dart';

class ApiManager {
  static const String apiKey = "cba33f0c59ef4c2eb175c9a5983ce9e4";

  static Future<NewsResponse> loadNewsSourses(String category) async {
    var parms = {
      "apiKey": apiKey,
      "category": category,
    };
    //**** this To different between http and https ***
    var uri = Uri.https('newsapi.org', '/v2/top-headlines/sources', parms);
    var response = await http.get(uri);
    var sourceResponse = NewsResponse.fromJson(jsonDecode(response.body));
    //**thstatusCode == 200 not found error like error error 404 and 401 and 400  */
    if (response.statusCode == 200) {
      return sourceResponse;
    }
    //**In case I don't Reach to the Server  and Error with the server*/

    if (sourceResponse.message != null) {
      throw Exception(sourceResponse.message);
    }
    //**Error whenthe phone and any devies don;t have the internt */
    throw Exception(" Error in Loading News Sources");
  }
}
