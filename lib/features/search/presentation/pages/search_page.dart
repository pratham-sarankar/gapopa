import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:gapopa/features/search/presentation/controllers/search_page_controller.dart';
import 'package:gapopa/features/search/presentation/widgets/loading_indicator.dart';
import 'package:gapopa/features/search/presentation/widgets/pixabay_image_card.dart';
import 'package:get/get.dart';

class SearchPage extends GetView<SearchPageController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
        () {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(
              right: 15,
              left: 10,
              top: 10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SearchBar(
                  controller: controller.searchController,
                  leading: const Padding(
                    padding: EdgeInsets.only(left: 12, right: 5),
                    child: Icon(IconlyLight.search),
                  ),
                  elevation: const WidgetStatePropertyAll(2),
                  onSubmitted: (value) {
                    controller.onSearchSubmit();
                  },
                  trailing: [
                    TextButton(
                      onPressed: () {
                        controller.onSearchSubmit();
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 18,
                        ),
                      ),
                      child: const Text("Search"),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                if (controller.isLoading.value && controller.images.isEmpty)
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: LoadingIndicator(text: "Loading..."),
                  )
                else
                  Expanded(
                    child: ListView(
                      controller: controller.scrollController,
                      padding: const EdgeInsets.only(
                        top: 30,
                        bottom: 20,
                        right: 15,
                        left: 15,
                      ),
                      children: [
                        Wrap(
                          alignment: WrapAlignment.spaceAround,
                          spacing: 30,
                          runSpacing: 50,
                          children: [
                            for (final image in controller.images)
                              PixabayImageCard(image: image),
                          ],
                        ),
                        if (controller.loadingMore)
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 50,
                            ),
                            child: LoadingIndicator(text: "Loading more..."),
                          ),
                      ],
                    ),
                  )
              ],
            ),
          );
        },
      ),
    );
  }
}
