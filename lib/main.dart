import 'package:chat_app/routes/app.route.dart';
import 'package:chat_app/style/theme.style.dart';
import 'package:chat_app/views/auth.view.dart';
import 'package:chat_app/views/home.view.dart';
import 'package:chat_app/views/unknown.view.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Drac Way',
      theme: AppTheme.lightTheme,
      getPages: RouteView.values.map((e) {
        switch (e) {
          case RouteView.home:
            return GetPage(name: "/${e.name}", page: () => const HomeView());
          case RouteView.auth:
            return GetPage(name: "/${e.name}", page: () => const AuthView());
          default:
            return GetPage(name: "/${e.name}", page: () => const UnknownView());
        }
      }).toList(),
      initialRoute: RouteView.home.name,
    );
  }
}
