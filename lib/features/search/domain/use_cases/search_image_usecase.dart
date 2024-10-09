import 'package:gapopa/features/search/data/models/pixabay_search_response.dart';
import 'package:gapopa/features/search/data/repositories/pixabay_repository_impl.dart';
import 'package:gapopa/features/search/domain/repositories/pixabay_repository.dart';

class SearchImageUseCase {
  final PixabayRepository repository = PixabayRepositoryImpl();

  Future<PixabaySearchResponse> execute({
    required String query,
    int page = 1,
    int perPage = 20,
  }) {
    return repository.search(
      query: query,
      perPage: perPage,
      page: page,
    );
  }
}
