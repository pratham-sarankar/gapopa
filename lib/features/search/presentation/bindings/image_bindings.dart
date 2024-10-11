import 'package:gapopa/features/search/domain/entities/pixabay_image.dart';
import 'package:gapopa/features/search/presentation/controllers/image_controller.dart';
import 'package:get/get.dart';

class ImageBindings extends Bindings {
  @override
  void dependencies() {
    Get.create<ImageViewController>(() {
      assert(
        Get.arguments is PixabayImage,
        "ImagePage requires an object of PixabayImage as an argument in Get.toNamed function",
      );
      return ImageViewController(image: Get.arguments as PixabayImage);
    });
  }
}
