// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        title: const Text('Black Army'),
        centerTitle: true,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: FlutterSwitch(
              width: 50.0,
              height: 30.0,
              toggleSize: 20.0,
              value: status,
              borderRadius: 30.0,
              padding: 2.0,
              activeToggleColor: const Color(0xFF6E40C9),
              inactiveToggleColor: const Color(0xFF2F363D),
              activeSwitchBorder: Border.all(
                color: const Color(0xFF3C1E70),
                width: 1.0,
              ),
              inactiveSwitchBorder: Border.all(
                color: const Color(0xFFD1D5DA),
                width: 1.0,
              ),
              activeColor: const Color(0xFF271052),
              inactiveColor: Colors.white,
              activeIcon: const Icon(
                Icons.nightlight_round,
                color: Color(0xFFF8E3A1),
              ),
              inactiveIcon: const Icon(
                Icons.wb_sunny,
                color: Color(0xFFFFDF5D),
              ),
              onToggle: (val) {
                status = val;

                if (Get.isDarkMode) {
                  Get.changeThemeMode(ThemeMode.light);
                } else {
                  Get.changeThemeMode(ThemeMode.dark);
                }

                (context as Element).markNeedsBuild();
              },
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              'Change Theme with just a toggle!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
