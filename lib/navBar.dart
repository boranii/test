import 'package:costum_nav_bar/main.dart';
import 'package:costum_nav_bar/nav_items.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  setPage(){
    setState(() {
      page.jumpToPage(currentPage);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Material(
        color: Colors.transparent,
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue.withAlpha(150),
                      Colors.blue,
                    ],
                  )),
                )),
            Positioned(
              bottom: 45,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NavItems(setPage: setPage,id: 0, icon: Icons.bubble_chart),
                  Container(),
                   NavItems(setPage: setPage,id: 1, icon: Icons.brightness_4),
                  Container(),
                   NavItems(setPage: setPage,id: 2, icon: Icons.landscape),
                ],
              ),
            ),
            Positioned(
                bottom: 10,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Focus',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(),
                    Text(
                      'Sleep',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(),
                    Text(
                      'Relax',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
