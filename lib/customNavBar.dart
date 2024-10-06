import 'package:costum_nav_bar/navBar.dart';
import 'package:costum_nav_bar/relax.dart';
import 'package:costum_nav_bar/sleep.dart';
import 'package:flutter/material.dart';

import 'focus.dart';
import 'main.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),
      extendBody: true,
      body:  PageView(
        physics:const NeverScrollableScrollPhysics(),
        controller: page,
        children: const[
            Focuss(),
            Sleep(),
            Relax(),
        ],
      ),
    );
  }
}
