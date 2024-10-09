import 'package:gapopa/features/search/domain/entities/pixabay_image.dart';

class PixabaySearchResponse {
  final List<PixabayImage> images;
  final int totalHits;

  PixabaySearchResponse({
    required this.images,
    required this.totalHits,
  });

  factory PixabaySearchResponse.fromMap(Map<String, dynamic> map) {
    return PixabaySearchResponse(
      images:
          List.from(map["hits"]).map((e) => PixabayImage.fromMap(e)).toList(),
      totalHits: map["totalHits"],
    );
  }
}
