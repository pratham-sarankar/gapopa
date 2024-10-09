import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gapopa/features/search/data/data_sources/pixabay_remote_data_source.dart';
import 'package:gapopa/features/search/data/models/pixabay_search_response.dart';
import 'package:gapopa/features/search/domain/repositories/pixabay_repository.dart';

class PixabayRepositoryImpl implements PixabayRepository {
  final PixabayRemoteDataSource remoteDataSource = PixabayRemoteDataSource();

  final String apiKey = dotenv.env['PIXABAY_API_KEY']!;

  @override
  Future<PixabaySearchResponse> search({
    required String query,
    int page = 1,
    int perPage = 20,
  }) async {
    final PixabaySearchResponse response = await remoteDataSource.search(
      query: query,
      page: page,
      perPage: perPage,
    );
    return response;
  }
}
