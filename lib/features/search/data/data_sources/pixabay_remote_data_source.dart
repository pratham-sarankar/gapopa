import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gapopa/features/search/data/models/pixabay_search_response.dart';
import 'package:http/http.dart' as http;

class PixabayRemoteDataSource {
  final String apiKey = dotenv.env['PIXABAY_API_KEY']!;

  Future<PixabaySearchResponse> search({
    required String query,
    int page = 1,
    int perPage = 20,
  }) async {
    var url =
        'https://pixabay.com/api/?&q=$query&key=$apiKey&per_page=$perPage&page=$page';
    var response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);
    return PixabaySearchResponse.fromMap(data);
  }
}
