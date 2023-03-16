import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app_quantom/widgets/search.dart';
// import 'package:technewz/components/searchbar.dart';


Future<List> fetchnews() async {
  final response = await http.get(
    Uri.parse('https://newsapi.org/v2/top-headlines?country=us&category=technology&pageSize=100&apiKey=6708064862b7410f80fdcc17090b7497' +
         
        '&q=' +
        SearchBar.searchcontroller.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}