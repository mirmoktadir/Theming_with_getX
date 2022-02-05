import 'package:black_army/constants/constants.dart';
import 'package:black_army/database/services/theme_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'views/pages/home_page.dart';

void main() async {
  await GetStorage.init();
  runApp(const BlackArmy());
}

class BlackArmy extends StatelessWidget {
  const BlackArmy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Black Army',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: HomePage(),
    );
  }
}
