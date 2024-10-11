import 'package:flutter/material.dart';
import 'package:gapopa/features/search/presentation/controllers/image_controller.dart';
import 'package:get/get.dart';

class ImagePage extends GetView<ImageViewController> {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          controller.image.largeImageURL,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
