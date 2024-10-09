import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:gapopa/features/search/domain/entities/pixabay_image.dart';
import 'package:get/get.dart';

class PixabayImageCard extends StatelessWidget {
  const PixabayImageCard({super.key, required this.image});
  final PixabayImage image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: Get.height * 0.35,
          child: AspectRatio(
            aspectRatio: 1,
            child: Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 4,
              shadowColor: Colors.grey.shade200,
              clipBehavior: Clip.antiAlias,
              child: Image.network(
                image.largeImageURL,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -32,
          right: 0,
          left: 0,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(IconlyBroken.heart),
              const SizedBox(width: 5),
              Text(
                image.likes.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 15),
              const Icon(CupertinoIcons.eye_solid),
              const SizedBox(width: 5),
              Text(
                image.formattedViewsCount.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
