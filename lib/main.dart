import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul1codelab/app/modules/home/views/home_view.dart';
import 'package:modul1codelab/app/pages/secondPage.dart';
import 'package:modul1codelab/app/pages/landingPage.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "First Page",
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => landingPage()),
        GetPage(name: '/home', page: () => ViewHome()),
        GetPage(name: '/second', page: () => secondPage())
      ],
    ),
  );
}
