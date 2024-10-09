import 'package:flutter/material.dart';
import 'package:gapopa/features/search/domain/entities/pixabay_image.dart';
import 'package:gapopa/features/search/domain/use_cases/search_image_usecase.dart';
import 'package:get/get.dart';

class SearchPageController extends GetxController {
  final ScrollController scrollController = ScrollController();
  final SearchController searchController = SearchController();

  var isLoading = false.obs;
  var images = <PixabayImage>[].obs;
  late RxString query;
  late int page;

  @override
  void onInit() {
    super.onInit();
    query = (Get.parameters['q'] ?? '').obs;
    page = 1;
    searchController.text = query.value;
    scrollController.addListener(loadMoreListener);
    search();
    ever(
      query,
      (callback) {
        page = 1;
        images.clear();
        search();
      },
    );
  }

  bool get loadingMore => isLoading.value && images.isNotEmpty;

  void search() async {
    if (isLoading.value) return;

    isLoading.value = true;
    try {
      final response =
          await SearchImageUseCase().execute(query: query.value, page: page);
      page++;
      images.addAll(response.images);
    } catch (e) {
      handleError(e as Exception);
    } finally {
      isLoading.value = false;
    }
  }

  void handleError(Exception e) {
    if (Get.context != null) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(
          content: const Text("An error occurred while searching..."),
          behavior: SnackBarBehavior.floating,
          action: SnackBarAction(
            label: 'Retry',
            onPressed: search,
          ),
        ),
      );
    }
  }

  void loadMoreListener() {
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        !loadingMore) {
      search();
    }
  }

  void onSearchSubmit() {
    query.value = searchController.text;
  }

  @override
  void onClose() {
    super.onClose();
    scrollController.dispose();
    searchController.dispose();
  }
}
