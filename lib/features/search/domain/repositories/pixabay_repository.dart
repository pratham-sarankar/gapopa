import 'package:gapopa/features/search/data/models/pixabay_search_response.dart';

abstract class PixabayRepository {
  Future<PixabaySearchResponse> search({
    required String query,
    int page = 1,
    int perPage = 20,
  });
}
