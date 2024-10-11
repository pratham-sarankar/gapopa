import 'package:gapopa/features/search/domain/entities/pixabay_image.dart';
import 'package:gapopa/features/search/presentation/bindings/image_bindings.dart';
import 'package:get/get.dart';

/// [ImageViewController] is controller for [ImagePage]
class ImageViewController extends GetxController {
  /// [image] parameter is initialized in the [ImageBindings]
  final PixabayImage image;

  ImageViewController({required this.image});
}
