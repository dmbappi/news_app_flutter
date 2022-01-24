import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List> getNews() async {
  final url =
      "https://newsapi.org/v2/everything?q=bangladesh&sortBy=publishedAt&apiKey=baeacbc4b07b47309fa2d59c335ac510";
  var response = await http.get(Uri.parse(url));
  var data = response.body;
  // print(response.body);
  Map dataMap = jsonDecode(data);
  return dataMap['articles'] as List;
}
