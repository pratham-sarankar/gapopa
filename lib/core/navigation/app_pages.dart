import 'package:gapopa/features/search/presentation/bindings/image_bindings.dart';
import 'package:gapopa/features/search/presentation/bindings/search_bindings.dart';
import 'package:gapopa/features/search/presentation/pages/image_page.dart';
import 'package:gapopa/features/search/presentation/pages/search_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.search;

  static final routes = [
    GetPage(
      name: _Paths.image,
      page: () => const ImagePage(),
      binding: ImageBindings(),
    ),
    GetPage(
      name: _Paths.search,
      page: () => const SearchPage(),
      binding: SearchBindings(),
      parameters: const {
        'q': 'Nature',
      },
    ),
  ];
}
