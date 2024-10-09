import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';

import 'core/navigation/app_pages.dart';

void main() async {
  /// Load variables from .env file
  await dotenv.load(fileName: ".env");

  /// Set the URL strategy for web
  setPathUrlStrategy();
  runApp(
    GetMaterialApp(
      title: "Gapopa",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
    ),
  );
}
