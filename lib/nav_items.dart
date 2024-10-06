import 'package:costum_nav_bar/main.dart';
import 'package:flutter/material.dart';

class NavItems extends StatelessWidget {
  final int id;
  final IconData icon;
  final Function setPage;
  const NavItems({super.key, required this.id, required this.icon, required this.setPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        currentPage = id;
        setPage();
      },
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.blue,
        child: CircleAvatar(
          backgroundColor: currentPage == id ?Colors.white :Colors.white.withOpacity(0.9),
          child: Icon(
            icon,
            color: currentPage == id ?Colors.black:Colors.blue,
          ),
        ),
      ),
    );
  }
}
